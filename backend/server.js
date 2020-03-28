const express = require('express')
const app = express()
const mysqlConnection = require("./connections")
var mysql = require('mysql')

//routes
const acronymRoutes = require("./routes/acronyms")
const leagueRoutes = require("./routes/league")
const playerRoutes = require("./routes/players")
const playerStatRoutes = require("./routes/playerStats")
const teamRoutes = require("./routes/teams")
const teamStatsRoutes = require("./routes/teamStats")



app.use(express.json());

app.use("/acronyms", acronymRoutes)
app.use("/league", leagueRoutes)
app.use("/players", playerRoutes)
app.use("/playerStats", playerStatRoutes)
app.use("/teams", teamRoutes)
app.use("/teamStats", teamStatsRoutes)


//PORT ENVIRONMENT VARIABLE
const port = process.env.PORT || 8080;
app.listen(port, () => console.log(`Listening on port ${port}..`));