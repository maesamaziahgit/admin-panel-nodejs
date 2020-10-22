var express = require('express');
var auth = require('./auth');
var router = express.Router();

// registration
router.post('/api/v1/register', auth.resgistration);
router.post('/api/v1/login', auth.login);

module.exports = router;