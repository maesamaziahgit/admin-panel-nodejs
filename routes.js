'use strict';

module.exports = function(app){
    var outputjson = require('./controller/controller');

    app.route('/')
        .get(outputjson.index);

    app.route('/selectEmp')
        .get(outputjson.selectEmp);
    app.route('/insertEmp')
        .post(outputjson.insertEmp);
};