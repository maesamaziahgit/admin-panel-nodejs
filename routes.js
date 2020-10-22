'use strict';

module.exports = function(app){
    var outputjson = require('./controller/controller');

    app.route('/')
        .get(outputjson.index);

    app.route('/selectUser')
        .get(outputjson.selectUser);
        
    app.route('/selectUserPID/:id')
        .get(outputjson.selectUserPID);

    app.route('/addEmployee')
        .post(outputjson.addEmployee);

    app.route('/updateEmployee')
        .put(outputjson.updateEmployee);

    app.route('/deleteEmployee')
        .delete(outputjson.deleteEmployee);

    app.route('/selectGroupDept')
        .get(outputjson.selectnested);
};