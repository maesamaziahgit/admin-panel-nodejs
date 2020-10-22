var express = require('express');
var auth = require('./auth');
var router = express.Router();
var validate = require('./validate');

// registration
router.post('/api/v1/register', auth.resgistration);
router.post('/api/v1/login', auth.login);

// authorization
router.get('/api/v1/adminpage', validate(1), auth.adminpage);

module.exports = router;