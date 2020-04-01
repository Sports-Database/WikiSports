const express = require('express')
const app = express()
var mysql = require('mysql')
const mysqlConnection = require("./connections")


//routes
const acronymRoutes = require("./routes/acronyms")
const leagueRoutes = require("./routes/league")
const playerRoutes = require("./routes/players")
const teamRoutes = require("./routes/teams")



app.use(express.json());

app.use("/acronyms", acronymRoutes)
app.use("/league", leagueRoutes)
app.use("/players", playerRoutes)
app.use("/teams", teamRoutes)


//PORT ENVIRONMENT VARIABLE
const port = process.env.PORT || 8080;
app.listen(port, () => console.log(`Listening on port ${port}..`));