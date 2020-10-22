var connection = require('../config/connection');
var mysql = require('mysql');
var md5 = require('md5');
var response = require('../model/model');
var jwt = require('jsonwebtoken');
var jwtKey = require('../config/jwt');
var ip = require('ip');

// controller register
exports.resgistration = function (req, res) {
    var post = {
        username: req.body.username,
        password: md5(req.body.password),
        role: req.body.role
    }

    var query = "SELECT username FROM ?? WHERE ?? = ?";
    var table = ["emp_login", "username", post.username];

    query = mysql.format(query, table);

    connection.query(query, function (error, rows) {
        if (error) {
            console.log(error);
        } else {
            if (rows.length == 0) {
                var query = "INSERT INTO ?? SET ?";
                var table = ["emp_login"];
                query = mysql.format(query, table);
                connection.query(query, post, function (error, rows) {
                    if (error) {
                        console.log(error);
                    } else {
                        response.success("user registration successful, please login", res);
                    }
                });
            } else {
                response.success("username has already been taken", res);
            }
        }
    })
}

// controller login
exports.login = function(req, res) {
    var post = {
        password: req.body.password,
        username: req.body.username
    }

    var query = "SELECT * FROM ?? WHERE ?? = ? AND ?? = ?";
    var table = ["emp_login", "password", md5(post.password), "username", post.username];

    query = mysql.format(query, table);
    connection.query(query, function(error, rows) {
        if (error) {
            console.log(error);
        } else {
            if (rows.length == 1) {
                var token = jwt.sign({rows}, jwtKey.secretkey, {
                    expiresIn: 1440 // 25 menit
                });
                id_login = rows[0].id;

                var data = {
                    id_login: id_login,
                    token: token,
                    ip_address: ip.address()
                }

                var query = "INSERT INTO ?? SET ?";
                var table = ["emp_token"];

                query = mysql.format(query, table);
                connection.query(query, data, function(error, rows) {
                    if (error) {
                        console.log(error);
                    } else {
                         res.json({
                             success: true,
                             messages: 'token has generated',
                             token: token,
                             currUser: data.id_login
                         });
                    }
                });
            } else {
                 res.json({"Error": true, "Message": "invalid username or password"});
            }
        }
    });
}

exports.adminpage = function(req, res){
    response.success("only allow access to admin page");
}