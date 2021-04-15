/* eslint-disable no-console */

const dotenv = require('dotenv');

dotenv.config();

const express = require('express');
const http = require('http');
const { resolve } = require('path');
const chalk = require('chalk');
const { pool } = require('../db/config.js');

const app = express();
const server = http.createServer(app);

if (process.env.NODE_ENV !== 'production') {
  // Logging middleware
  const morgan = require('morgan'); /* eslint-disable-line */
  app.use(morgan('dev'));
}

app.use(express.static(resolve(__dirname, '../dist')));

const getWords = (request, response) => {
  pool.query('SELECT * FROM words', (error, results) => {
    if (error) {
      throw error;
    }
    response.status(200).json(results.rows);
  });
};

app
  .route('/words')
  // GET endpoint
  .get(getWords);

app.get('/*', (req, res) => {
  res.sendFile(resolve(__dirname, '../dist/index.html'));
});

const port = process.env.PORT || 3000;
server.listen(port, () => {
  console.log(chalk.green(`--- Listening on port ${port} ---`));
});

app.use('/', (err, req, res, next) => { /* eslint-disable-line */
  console.log(chalk.red(`ERROR: ${err.message}`));
  res.status(err.status || 500).json({ error: err.toString() });
});
