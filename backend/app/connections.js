//Connect to MySQL
var mysql = require('mysql')

var mysqlConnection = mysql.createConnection({
    host: "wikisports_wiki-sports-db_1",
    port: "3306",
    user: "wiki-sport-main",
    password: "wikisport",
    database: "wiki_sports"
  });
  
  
  
  //Open Connection
  mysqlConnection.connect(function(err) {
        if (err) console.log('Could not connect to wiki_sports database')
	else     console.log('Connected to wiki_sports database!')
  });

  module.exports = mysqlConnection
