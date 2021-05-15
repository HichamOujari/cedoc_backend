let mysql = require("mysql");

let connection = mysql.createConnection({
    host     : 'localhost',
    user     : 'root',
    password : '',
    database : 'cedoc'
  });
  
  connection.connect();
  
  module.exports = connection;