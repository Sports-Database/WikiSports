// import
const sql     = require('../connections') // connected db
const express = require('express')
const router  = express.Router() // express route handler

/*
end points
http://localhost:8080

/stats/careerStats/<playerName>
/stats/earnings/<playerName>
/stats/seasonal/<player name>
*/

// /stats/careerStats/<playerName>
router.get("/career/:playerName", (req,res) =>{
  let pName = req.params.playerName
  sql.query(`
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
  })
})// get career player stats by player name

// /stats/earnings/<playerName>
router.get("/earnings/:playerName", (req,res) =>{
  let pName = req.params.playerName
  sql.query(`
  SELECT length, c.salaryPerYear FROM contracts c
  INNER JOIN players p ON c.playerId = p.id
  WHERE p.name LIKE '%${pName}%';`, 
  (err, rows, fields)=>{
    if(err) throw err
    res.end(JSON.stringify(rows))
  })
})// get earnings per year by player name

// /stats/seasonal/<player name>
router.get("/seasonal/:playerName", (req,res) =>{
  let pName = req.params.playerName
  sql.query(`
    SELECT se.season, 
      SUM(Points)   AS Points,
      SUM(Rebounds) AS Rebounds, 
      SUM(Assists)  AS Assists, 
      SUM(Steals)   AS Steals 
    FROM seasons se
    INNER JOIN games g   ON g.seasonId = se.id
    INNER JOIN stats s   ON s.GameId   = g.GameId
    INNER JOIN players p ON p.id       = Playerid
    WHERE name LIKE '%${pName}%'
    GROUP BY season;`, 
  (err, rows, fields)=>{
    if(err) throw err
    res.end(JSON.stringify(rows))
  })
})// get seasonal player stats by player name

module.exports = router