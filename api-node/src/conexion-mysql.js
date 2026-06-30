const mysql = require('mysql2/promise');

const conexion = mysql.createPool({
  host: process.env.MYSQL_HOST || 'mysql',
  user: process.env.MYSQL_USER || 'osteo',
  password: process.env.MYSQL_PASS || '123456',
  database: process.env.MYSQL_DB || 'diccionario',
  waitForConnections: true
});

module.exports = conexion;