'use strict';

var response = require('../model/model');
var connection = require('../config/connection');

exports.index = function (req, res) {
    response.success('REST API running', res)
};

exports.selectEmp = function (req, res) {
    connection.query('SELECT * FROM emp',
        function (error, rows, fields) {
            if (error) {
                console.log(error);
            } else {
                response.success(rows, res)
            }
        });
};