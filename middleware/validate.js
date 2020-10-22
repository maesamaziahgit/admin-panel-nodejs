const jwt = require('jsonwebtoken');
const secretkey = require('../config/jwt');

function validate(roles){
    return function(req, res, next) {
        // authorization header
        var tokenWithBearer = req.headers.authorization;
        if (tokenWithBearer) {
            var token = tokenWithBearer.split(' ')[1];
            // validate token
            jwt.verify(token, secretkey.secretkey, function(err, decoded){
                if (err) {
                    return rest.status(401).send({
                        auth: false,
                        message: 'invalid token'
                    });
                } else {
                    if (roles==1) {
                        req.auth = decoded;
                        next();
                    } else {
                        return rest.status(401).send({
                            auth: false,
                            message: 'invalid role'
                        });
                    }
                }
            });
        } else {
            return rest.status(401).send({
                auth: false,
                message: 'invalid authorization specification'
            });
        }
    }
}

module.exports = validate;