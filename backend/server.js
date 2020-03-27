const express = require('express');
const app = express();
app.use(express.json());

var mysql = require('mysql');

app.get('/', (req, res) => {
	res.send('hi WORLD!')
})

//Connect to MySQL
var con = mysql.createConnection({
  host: "backend_mysql_1",
  port: "3306",
  user: "wiki-sport-main",
  password: "wikisport",
  database: "example"
});

//Open Connection
con.connect(function(err) {
	  if (err) throw err;
});

// create router
var router = express.Router();

// middleware to use for all requests
router.use(function(req, res, next) {
	// do logging
	console.log('Something is happening.');
	next();
});//


//GET
// /api/getit
router.get('/getit', function (req, res) {
	con.query("SELECT * FROM t1", function (err, result, fields) {
		if (err) throw err;
		res.end(JSON.stringify(result)); // Result in JSON format
	});
});

// REGISTER  ROUTES
app.use('/api', router);

//PORT ENVIRONMENT VARIABLE
const port = process.env.PORT || 8080;
app.listen(port, () => console.log(`Listening on port ${port}..`));