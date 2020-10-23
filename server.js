const express = require('express');
const bodyParser = require('body-parser');
const morgan = require('morgan');
const platform = require('./platform.js');
const routes = require('./routes');
const cors = require('cors');
const app = express();

app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());
app.use(morgan('dev'));
app.use('/auth', require('./middleware'));
app.use(cors());
routes(app);

app.listen(platform.port, () => {
    console.log(`Server started on port`);
});