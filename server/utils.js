let origin;
if (process.env.NODE_ENV === 'development') {
  origin = 'http://localhost:8080';
}

exports.origin = origin;
