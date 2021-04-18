const chalk = require('chalk');

module.exports = (io) => {
  io.on('connection', (socket) => {
    console.log(chalk.green(`${socket.id} has connected`));
  });
};
