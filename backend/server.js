// import
const express         = require('express')
const cors            = require('cors')
const bodyParser      = require('body-parser')
const mysqlConnection = require("./app/connections")
const routes          = require("./app/routes")
const app             = express()

// enable
app.use(bodyParser.json())

app.use(cors({
  origin: '*'
}))

app.use(express.json())


//PORT ENVIRONMENT VARIABLE
const port = process.env.PORT || 8080;
app.listen(port, () => console.log(`Listening on port ${port}..`))

//go to routes
routes(app)
