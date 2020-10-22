const express = require('express');
const bodyParser = require('body-parser');
const morgan = require('morgan');
const app = express();

// parsing app/json
app.use(bodyParser.urlencoded({extended: true}));
app.use(bodyParser.json());
app.use(morgan('dev'));

// routes
const routes = require('./routes');
routes(app);

// platform
const platform = require('./platform.js');

// morgan
app.use('/auth', require('./middleware'));

app.listen(platform.port, () => {
    console.log(`Server started on port`);
});