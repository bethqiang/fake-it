/* eslint-disable */

function getServer() {
  let server;
  if (window.location.host === 'localhost:8080') {
    server = 'http://localhost:3000';
  }
}

function generateString() {
  const possible = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  let text = '';

  for (let i = 0; i < 5; i++) {
    text += possible.charAt(Math.floor(Math.random() * possible.length));
  }
  return text;
};

export { getServer, generateString };
