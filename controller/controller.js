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

exports.insertEmp = function (req, res) {
    var firstname = req.body.firstname;
    var lastname = req.body.lastname;
    var emp_num = req.body.emp_num;
    var role_id = req.body.role_id;
    var job_id = req.body.job_id;
    var address = req.body.address;
    var city = req.body.city;
    var zip = req.body.zip;
    var phonenumber = req.body.phonenumber;
    connection.query('INSERT INTO emp (firstname, lastname, emp_num, role_id, job_id, address, city, zip, phonenumber) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)', [firstname, lastname, emp_num, role_id, job_id, address, city, zip, phonenumber],
        function (error, rows, fields) {
            if (error) {
                console.log(error);
            } else {
                response.success('Successfully inserted!', res)
            }
        }
    );
};