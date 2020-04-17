const express = require("express")
const Router = express.Router()
const mysqlConnection = require("../connections")


//
//------------------ /players -----------------------
Router.get('/', (req,res) => {
  mysqlConnection.query(`
    SELECT players.name FROM players;`,
    (err, rows, fields) => {
      if(err) throw err
      res.end(JSON.stringify(rows));
  })// query
})// get player ids and player names


// /player name by search query and also get the url
Router.get('/:playerName', (req,res) => {
    let pName = req.params.playerName
    mysqlConnection.query(`
        SELECT p.name, p.url 
        FROM players p
        WHERE p.name LIKE '%${pName}%';` ,
        (err, rows, fields) => {
            if(err) throw err
            res.end(JSON.stringify(rows));
    })// query
  })// get player ids and player names




// /players/teams/<playerName>
Router.get('/team/:playerName', (req,res) => {
  let pName = req.params.playerName
  mysqlConnection.query(`
    SELECT t.name
    FROM teams t
    INNER JOIN rosters r ON r.teamId = t.id
    INNER JOIN players p ON p.id = r.playerId
    INNER JOIN seasons s ON s.id = r.seasonId
    WHERE p.name LIKE '%${pName}%'
    ORDER BY s.season DESC
    LIMIT 1;`,
      (err, rows, fields) => {
          if(err) throw err
          res.end(JSON.stringify(rows));
  })// query
})// get most recent team a player has played for by player name



module.exports = Router
