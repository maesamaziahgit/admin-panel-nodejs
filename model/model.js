'use strict';

exports.success = function (values, res) {
    var data = {
        'status': 200,
        'values': values
    };

    res.json(data);
    res.end();
}