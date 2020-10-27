'use strict';

var response = require('../model/model');
var connection = require('../config/connection');

exports.index = function (req, res) {
    response.success('REST API running', res)
};

exports.selectEmp = function (req, res) {
    connection.query(`SELECT emp.id, emp.firstname, emp.lastname, emp.emp_num,
            emp.role_id, emp.job_id, date_format(emp.hiredate, '%Y-%m-%d') AS hiredate, emp.address, emp.city, emp.zip,
            emp.phonenumber
            FROM fruitazon.emp emp`,
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
    connection.query(`SELECT up.name, 
                        COALESCE(date_format(ih.time, '%Y-%m-%d'), '-') AS order_date, 
                        COALESCE(id.id, '-') AS order_id, 
                        COALESCE(id.product_name, '-') AS product, 
                        COALESCE(pc.category_name, '-') AS category, 
                        COALESCE(id.product_qty, 0) AS quantity, 
                        CASE
                            WHEN pc.category_name = "fruits" THEN id.product_qty
                        ELSE 0
                        END AS fruits_qty,
                        CASE
                            WHEN pc.category_name = "vegetables" THEN id.product_qty
                        ELSE 0
                        END AS vegetables_qty,
                        COALESCE(id.product_price, 0) AS price, 
                        COALESCE((id.product_qty*id.product_price), 0) AS amount,
                        CASE
                            WHEN ISNULL(ih.id ) THEN "InProgress"
                            WHEN ih.status_payment = 0 THEN "Invoice"
                            WHEN ih.status_payment = 1 THEN "Paid"
                        ELSE "Check"
                        END AS status
                    FROM fruitazon.user_profile up
                    LEFT JOIN fruitazon.invoice_header ih ON up.user_id = ih.user_id
                    LEFT JOIN fruitazon.invoice_detail id ON ih.id = id.invoice_header_id
                    LEFT JOIN fruitazon.product p ON id.product_name = p.title
                    LEFT JOIN fruitazon.product_category pc ON p.category_id = pc.id
                    ORDER BY ih.time`,
        function (error, rows, fields) {
            if (error) {
                console.log(error);
            } else {
                response.success(rows, res)
            }
        });
};

exports.selectOrderByDate = function (req, res) {
    connection.query(`SELECT COALESCE(date_format(ih.time, '%Y-%m-%d'), '-') AS order_date, 
                        SUM(CASE
                            WHEN pc.category_name = "fruits" THEN id.product_qty*id.product_price
                        ELSE 0
                        END) AS fruits_qty,
                        SUM(CASE
                            WHEN pc.category_name = "vegetables" THEN id.product_qty*id.product_price
                        ELSE 0
                        END) AS vegetables_qty
                    FROM fruitazon.user_profile up
                    LEFT JOIN fruitazon.invoice_header ih ON up.user_id = ih.user_id
                    LEFT JOIN fruitazon.invoice_detail id ON ih.id = id.invoice_header_id
                    LEFT JOIN fruitazon.product p ON id.product_name = p.title
                    LEFT JOIN fruitazon.product_category pc ON p.category_id = pc.id
                    WHERE ih.user_id IS NOT NULL
                    GROUP BY COALESCE(date_format(ih.time, '%Y-%m-%d'), '-')
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
    connection.query(`SELECT p.id, pc.category_name AS category, p.title AS name, p.description, p.price AS unit_price, p.img AS image_product
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
    connection.query(`SELECT ih.id AS invoice_id, 
                        DATE_FORMAT(ih.time, '%Y-%m-%d') AS invoice_date, 
                        id.id AS invoice_number, 
                        id.product_name AS product, 
                        id.product_qty AS quantity, 
                        id.product_price AS unit_price, 
                        up.name AS customer_name,
                        ih.status_payment,
                        CASE
                        WHEN ih.status_payment = 0 THEN "Invoice"
                        WHEN ih.status_payment = 1 THEN "Paid"
                        ELSE "Check"
                        END AS status
                    FROM fruitazon.invoice_detail id
                    INNER JOIN fruitazon.invoice_header ih ON id.invoice_header_id = ih.id
                    INNER JOIN fruitazon.user_profile up ON ih.user_id = up.user_id
                    ORDER BY ih.id, ih.time, id.id`,
        function (error, rows, fields) {
            if (error) {
                console.log(error);
            } else {
                response.success(rows, res)
            }
        });
};

exports.selectSumQtyOrder = function (req, res) {
    connection.query(`SELECT 
                        id.product_name,
                        SUM(id.product_qty) AS qty
                    FROM fruitazon.invoice_detail id
                    GROUP BY id.product_name
                    ORDER BY id.product_name`,
        function (error, rows, fields) {
            if (error) {
                console.log(error);
            } else {
                response.success(rows, res)
            }
        });
};

exports.selectCreationDateCust = function (req, res) {
    connection.query(`SELECT
            DAYNAME(up.creation_date) as day,
            COUNT(*) as jumlah
            FROM fruitazon.user_profile up
            GROUP BY DAYNAME(up.creation_date)`,
        function (error, rows, fields) {
            if (error) {
                console.log(error);
            } else {
                response.success(rows, res)
            }
        });
};

exports.selectEmployee = function (req, res) {
    connection.query(`SELECT CONCAT(e.firstname, ' ', e.lastname) AS name,
                        e.emp_num AS employee_number ,
                        DATE_FORMAT(e.hiredate, '%Y-%m-%d') AS hiredate,
                        e.age,
                        e.sex,
                        e.address,
                        e.city,
                        e.zip,
                        e.phonenumber
                    FROM fruitazon.emp e
                    ORDER BY CONCAT(e.firstname, ' ', e.lastname)`,
        function (error, rows, fields) {
            if (error) {
                console.log(error);
            } else {
                response.success(rows, res)
            }
        });
};

exports.selectEmpByGender = function (req, res) {
    connection.query(`SELECT e.sex,
                      COUNT(*) AS count
                    FROM fruitazon.emp e
                    GROUP BY e.sex`,
        function (error, rows, fields) {
            if (error) {
                console.log(error);
            } else {
                response.success(rows, res)
            }
        });
};

exports.selectEmpByAge = function (req, res) {
    connection.query(`SELECT
                        SUM(IF(age < 20,1,0)) as 'Under20',
                        SUM(IF(age BETWEEN 20 and 29,1,0)) AS under29,
                        SUM(IF(age BETWEEN 30 and 39,1,0)) as under39,
                        SUM(IF(age BETWEEN 40 and 49,1,0)) as under49,
                        SUM(IF(age BETWEEN 50 and 59,1,0)) as under59,
                        SUM(IF(age >=80, 1, 0)) as Over60
                    FROM (SELECT age FROM emp) as derived`,
        function (error, rows, fields) {
            if (error) {
                console.log(error);
            } else {
                response.success(rows, res)
            }
        });
};

exports.selectEmpJob = function (req, res) {
    connection.query(`SELECT 
                        ed.dept_name AS department,
                        ed.dept_loc AS location,
                        ej.job_title AS job,
                        CONCAT(e.firstname, ' ', e.lastname) AS name,
                        e.sex AS gender,
                        DATE_FORMAT(e.hiredate, '%Y-%m-%d') AS hiredate
                        FROM fruitazon.emp e
                        INNER JOIN fruitazon.emp_job ej ON e.job_id = ej.id
                        INNER JOIN fruitazon.emp_dept ed ON ej.dept_id = ed.id
                        ORDER BY ed.dept_name, ed.dept_loc, ej.job_title`,
        function (error, rows, fields) {
            if (error) {
                console.log(error);
            } else {
                response.success(rows, res)
            }
        });
};

exports.selectEmpGDept = function (req, res) {
    connection.query(`SELECT 
                        sub_dept.department AS department,
                        COUNT(*) AS count
                        FROM
                        (
                        SELECT sub_emp.department, sub_emp.name
                        FROM 
                        (SELECT 
                        ed.dept_name AS department,
                        ed.dept_loc AS location,
                        ej.job_title AS job, CONCAT(e.firstname, ' ', e.lastname) AS name,
                        e.sex AS gender, DATE_FORMAT(e.hiredate, '%Y-%m-%d') AS hiredate
                        FROM fruitazon.emp e
                        INNER JOIN fruitazon.emp_job ej ON e.job_id = ej.id
                        INNER JOIN fruitazon.emp_dept ed ON ej.dept_id = ed.id
                        ORDER BY ed.dept_name, ed.dept_loc, ej.job_title) AS sub_emp) sub_dept
                        GROUP BY sub_dept.department`,
        function (error, rows, fields) {
            if (error) {
                console.log(error);
            } else {
                response.success(rows, res)
            }
        });
};

exports.selectAccountAdmin = function (req, res) {
    connection.query(`SELECT el.id,
                        el.username,
                        el.role,
                        DATE_FORMAT(el.creation_date, '%Y-%m-%d') AS creation_date,
                        DATE_FORMAT(el.update_date, '%Y-%m-%d') AS update_date
                        FROM fruitazon.emp_login el`,
        function (error, rows, fields) {
            if (error) {
                console.log(error);
            } else {
                response.success(rows, res)
            }
        });
};