// import
const sql     = require('../connections') // connected db
const express = require('express')
const router  = express.Router() // express route handler

//http://localhost:8080

// /teams
router.get('/', (req, res) => {
  sql.query(`
    SELECT teams.name FROM teams;`,
    (err, rows, field) => {
      if(err) throw err
    res.end(JSON.stringify(rows))
  })
})// get team names

// get team information by team name
router.get("/:teamName", (req,res) => {
  let tName = req.params.teamName
  sql.query(`
      SELECT * FROM
      teams t
      WHERE t.name like '%${tName}%';`, 
  (err, rows, fields) => {
      if(err) throw err
      res.end(JSON.stringify(rows))
  })// query
  })

// /teams/articles/<team name>
router.get('/articles/:teamName', (req, res) => {
  let tName = req.params.teamName
  sql.query(`  
    SELECT a.url 
    FROM   articles a
    INNER JOIN teams t
    ON a.teamId = t.id
    WHERE t.name like "%${tName}%";`,
    (err, rows, field) => {
      if(err) throw err
    res.end(JSON.stringify(rows))
  })
})// get team url by name

// get titles won by team name
router.get('/titles/:teamName', (req, res) => {
  let tName = req.params.teamName
  sql.query(`
    SELECT season, count(championId) as wonTitle FROM
      (
        SELECT s.season, 
        s.id as season_id, 
        t.name as team_name, 
        t.id as team_id, 
        count(*) GameId, 
        t.id
      FROM teams t
      INNER JOIN games g ON g.homeId = t.id
      INNER JOIN seasons s ON s.id = g.seasonId
      GROUP BY  s.season, s.id, t.name, t.id) 
      AS team_season
    LEFT JOIN league l ON l.championId = team_season.team_id AND l.seasonId = team_season.season_id
    WHERE team_name like "%${tName}%"
    GROUP BY team_season.season_id, team_season.team_id
    ORDER BY season, team_id;`, 
  (err, rows, fields) => {
    if(err) throw err
    res.end(JSON.stringify(rows))
  })
})// get titles won by team name
  
// get player names by team name
router.get("/players/:teamName", (req,res) => {
let tName = req.params.teamName
sql.query(`
    SELECT p.name FROM rosters r
    INNER JOIN teams t ON r.teamId = t.id
    INNER JOIN players p ON p.id = r.playerId
    INNER JOIN (SELECT MAX(id) as current_year FROM seasons s) s ON s.current_year = r.seasonId
    WHERE t.name like '%${tName}%';`, 
(err, rows, fields) => {
    if(err) throw err
    res.end(JSON.stringify(rows))
})
})// get player names by team name

// get most recent champions from 2019
router.get("/champs/championRoster", (req,res) => {
  sql.query(`
    SELECT DISTINCT p.name as playerName, t.name as teamName FROM league l
    INNER JOIN teams t ON t.id = l.championId
    INNER JOIN rosters r ON r.teamId = t.id
    INNER JOIN players p ON p.id = r.playerId
    WHERE l.seasonId = 3;`, 
  (err, rows, fields) => {
    if(err) throw err
    console.log(rows)
    res.end(JSON.stringify(rows))
  })// query
})// get champions

module.exports = router
