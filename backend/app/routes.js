//routes
module.exports = function(app){
	const acronymRoutes  = require("./endpoints/acronyms")
	const playerRoutes   = require("./endpoints/players")
	const teamRoutes     = require("./endpoints/teams")
	const statRoutes     = require("./endpoints/stats")
	const leagueRoutes   = require("./endpoints/league")
	const seasonRoutes    = require("./endpoints/seasons")

	app.use("/acronyms", acronymRoutes)
	app.use("/players", playerRoutes)
	app.use("/teams", teamRoutes)
	app.use("/league", leagueRoutes)
	app.use("/stats", statRoutes)
	app.use("/seasons", seasonRoutes)
}
