'use strict';

var response = require('../model/model');
var connection = require('../config/connection');

exports.index = function (req, res) {
    response.success('REST API running', res)
};

exports.selectUser = function (req, res) {
    connection.query('SELECT * FROM user_profile',
        function (error, rows, fields) {
            if (error) {
                console.log(error);
            } else {
                response.success(rows, res)
            }
        });
};

exports.selectUserPID = function (req, res) {
    let id = req.params.id;
    connection.query('SELECT * FROM user_profile WHERE id = ?', [id],
        function (error, rows, fields) {
            if (error) {
                console.log(error);
            } else {
                response.success(rows, res)
            }
        });
};

exports.addEmployee = function (req, res) {
    var username = req.body.username;
    var password = req.body.password;
    var role = req.body.role;
    connection.query('INSERT INTO emp_login (username, password, role) VALUES (?, ?, ?)', [username, password, role],
        function (error, rows, fields) {
            if (error) {
                console.log(error);
            } else {
                response.success('data inserted!', res)
            }
        }
    );
};

exports.updateEmployee = function (req, res) {
    var id = req.body.id;
    var username = req.body.username;
    var password = req.body.password;
    var role = req.body.role;
    connection.query('UPDATE emp_login SET username=?, password=?, role=? WHERE id=?', [username, password, role, id],
        function (error, rows, fields) {
            if (error) {
                console.log(error);
            } else {
                response.success('data changed!', res)
            }
        }
    );
};

exports.deleteEmployee = function (req, res) {
    var id = req.body.id;
    connection.query('DELETE FROM emp_login WHERE id=?', [id],
        function (error, rows, fields) {
            if (error) {
                console.log(error);
            } else {
                response.success('data deleted!', res)
            }
        }
    );
};

// nested
exports.selectnested = function (req, res) {
    connection.query(
        `SELECT d.dept_name, j.job_title, e.firstname FROM emp e INNER JOIN emp_job j ON e.job_id = j.id INNER JOIN emp_dept d ON j.dept_id = d.id ORDER BY d.dept_name, j.job_title, e.firstname`
        , function (error, rows, fields) {
            if (error) {
                console.log(error);
            } else {
                response.nestedsuccess(rows, res);
            }
        }
    );
};