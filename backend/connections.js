//Connect to MySQL
var mysql = require('mysql')
var mysqlConnection = mysql.createConnection({
    host: "backend_mysql_1",
    port: "3306",
    user: "wiki-sport-main",
    password: "wikisport",
    database: "wiki_sports"
  });
  
  
  
  //Open Connection
  mysqlConnection.connect(function(err) {
        if (err) throw err;
  });

  module.exports = mysqlConnection