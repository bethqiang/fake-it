const { Pool } = require('pg');

module.exports = {
  pool: new Pool({ connectionString: process.env.DATABASE_URL }),
};
