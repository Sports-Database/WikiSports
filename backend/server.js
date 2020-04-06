const express = require('express')
const app = express()
const cors = require('cors')
const bodyParser = require('body-parser')
var mysql = require('mysql')
const mysqlConnection = require("./connections")


app.use(bodyParser.json());
app.use(cors({
  origin: '*'
}));

app.use(express.json());

//routes
const acronymRoutes = require("./routes/acronyms")
// const leagueRoutes = require("./routes/league")
const playerRoutes = require("./routes/players")
const teamRoutes = require("./routes/teams")





app.use("/acronyms", acronymRoutes)
// app.use("/league", leagueRoutes)
app.use("/players", playerRoutes)
app.use("/teams", teamRoutes)


//PORT ENVIRONMENT VARIABLE
const port = process.env.PORT || 8080;
app.listen(port, () => console.log(`Listening on port ${port}..`));