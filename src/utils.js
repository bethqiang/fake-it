/* eslint-disable */

let server;
if (window.location.host === 'localhost:8080') {
  server = 'http://localhost:3000';
}

export { server };
