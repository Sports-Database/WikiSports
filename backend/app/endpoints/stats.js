const express = require("express")
const Router = express.Router()
const mysqlConnection = require("../connections")

//--------- get career player stats by player name -------------
// /stats/careerStats/<playerName>
Router.get("/career/:playerName", (req,res) =>{
  let pName = req.params.playerName
  mysqlConnection.query(`
    SELECT 
      SUM(Points)   AS Points,
      SUM(Rebounds) AS Rebounds,
      SUM(Assists)  AS Assists,
      SUM(Steals)   AS Steals
      
    FROM games g
    INNER JOIN stats s ON s.GameId = g.GameId
    INNER JOIN players p ON p.id = Playerid
    WHERE name LIKE '%${pName}%';`, 
  (err, rows, fields)=>{
    if(err) throw err
    res.end(JSON.stringify(rows))
  })// query
})// 


// ------------ get player stats per season ----------------------
Router.get("/seasonal/:playerId", (req,res) =>{
    let pId = req.params.playerId
    mysqlConnection.query(`
        SELECT 
		se.season, 
		sum(Rebounds)        AS Rebounds,
		sum(Assists)         AS Assists, 
		sum(PersonalFouls)   AS PersonalFouls,
		sum(Steals)          AS Steals,
		sum(Points)          AS Points
        FROM seasons se
        INNER JOIN games g   ON g.seasonId = se.id
        INNER JOIN stats s   ON s.GameId = g.GameId
        INNER JOIN players p ON p.id = Playerid
        WHERE name  like '%${pId}%'
        GROUP BY season;`, 
    (err, rows, fields)=>{
        if(err) throw err
        res.end(JSON.stringify(rows));
    })
})

// ----------------- get earnings per year by player name ------------
// /stats/earnings/<playerName>
Router.get("/earnings/:playerName", (req,res) =>{
  let pName = req.params.playerName
  mysqlConnection.query(`
  SELECT length, c.salaryPerYear FROM contracts c
  INNER JOIN players p ON c.playerId = p.id
  WHERE p.name LIKE '%${pName}%';`, 
  (err, rows, fields)=>{
    if(err) throw err
    res.end(JSON.stringify(rows))
  })// query
})


module.exports = Router
