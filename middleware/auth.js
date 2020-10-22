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