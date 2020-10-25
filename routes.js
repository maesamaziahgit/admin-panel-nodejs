'use strict';

module.exports = function(app){
    var outputjson = require('./controller/controller');

    app.route('/')
        .get(outputjson.index);

    app.route('/selectEmp')
        .get(outputjson.selectEmp);
    app.route('/insertEmp')
        .post(outputjson.insertEmp);
    app.route('/updateEmp')
        .put(outputjson.updateEmp);
    app.route('/deleteEmp')
        .delete(outputjson.deleteEmp);
    app.route('/selectOrder')
        .get(outputjson.selectOrder);
    app.route('/selectProduct')
        .get(outputjson.selectProduct);
    app.route('/selectCustomer')
        .get(outputjson.selectCustomer);
    app.route('/selectInvoice')
        .get(outputjson.selectInvoice);
};