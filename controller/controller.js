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
                response.success('successfully inserted!', res)
            }
        }
    );
};

exports.updateEmp = function (req, res) {
    var id = req.body.id;
    var firstname = req.body.firstname;
    var lastname = req.body.lastname;
    var emp_num = req.body.emp_num;
    var role_id = req.body.role_id;
    var job_id = req.body.job_id;
    var address = req.body.address;
    var city = req.body.city;
    var zip = req.body.zip;
    var phonenumber = req.body.phonenumber;
    connection.query('UPDATE emp SET firstname=?, lastname=?, emp_num=?, role_id=?, job_id=?, address=?, city=?, zip=?, phonenumber=? WHERE id=?', [firstname, lastname, emp_num, role_id, job_id, address, city, zip, phonenumber, id],
        function (error, rows, fields) {
            if (error) {
                console.log(error);
            } else {
                response.success('successfully updated!', res)
            }
        }
    );
};

exports.deleteEmp = function (req, res) {
    var id = req.body.id;
    connection.query('DELETE FROM emp WHERE id=?', [id],
        function (error, rows, fields) {
            if (error) {
                console.log(error);
            } else {
                response.success('successfully deleted!', res)
            }
        }
    );
};

exports.selectOrder = function (req, res) {
    connection.query(`SELECT up.name, ih.time, id.product_name, id.product_qty, id.product_price
            FROM fruitazon.user_profile up
            INNER JOIN fruitazon.invoice_header ih ON up.user_id = ih.user_id
            INNER JOIN fruitazon.invoice_detail id ON ih.id = id.invoice_header_id 
            ORDER BY ih.time`,
        function (error, rows, fields) {
            if (error) {
                console.log(error);
            } else {
                response.success(rows, res)
            }
        });
};

exports.selectProduct = function (req, res) {
    connection.query(`SELECT p.id, pc.category_name, p.title, p.description, p.price, p.img
            FROM fruitazon.product_category pc 
            INNER JOIN fruitazon.product p
            ON pc.id = p.category_id
            ORDER BY pc.category_name, p.title`,
        function (error, rows, fields) {
            if (error) {
                console.log(error);
            } else {
                response.success(rows, res)
            }
        });
};

exports.selectCustomer = function (req, res) {
    connection.query(`SELECT up.id, up.name, ul.username, up.address, up.email
            FROM fruitazon.user_profile up 
            INNER JOIN fruitazon.user_login ul
            ON up.user_id = ul.id
            ORDER BY up.name`,
        function (error, rows, fields) {
            if (error) {
                console.log(error);
            } else {
                response.success(rows, res)
            }
        });
};

exports.selectInvoice = function (req, res) {
    connection.query(`SELECT ih.id, ih.time, ih.status_payment, ih.message_to_seller, id.id AS id_detail, id.product_name, id.product_qty, id.product_price, up.name
            FROM fruitazon.invoice_detail id
            INNER JOIN fruitazon.invoice_header ih
            ON id.invoice_header_id = ih.id
            INNER JOIN fruitazon.user_profile up
            ON ih.user_id = up.user_id
            ORDER BY ih.id, ih.time, id.id`,
        function (error, rows, fields) {
            if (error) {
                console.log(error);
            } else {
                response.success(rows, res)
            }
        });
};