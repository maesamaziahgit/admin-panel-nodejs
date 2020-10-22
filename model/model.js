'use strict';

exports.success = function (values, res) {
    var data = {
        'status': 200,
        'values': values
    };

    res.json(data);
    res.end();
}

// response nested data
exports.nestedsuccess = function (values, res) {
    // value di reduce, menjadi single value di group kan 
    const output = values.reduce((accum, item) => {
        if (accum[item.dept_name]) {
            if (accum[item.job_title]) {
                const group = accum[item.job_title];
                if (Array.isArray(group.firstname)) {
                    group.firstname.push(item.firstname);
                } 
                else {
                    group.firstname = [group.firstname, item.firstname];
                } 
            } else {
                accum[item.job_title] = item;    
            } 
        } else {
            accum[item.dept_name] = item;
        }
        return accum;
    }, {});

    var data = {
        'status': 200,
        'values': values
    };

    res.json(data);
    res.end();
}