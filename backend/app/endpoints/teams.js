const express = require("express")
const Router = express.Router()
const mysqlConnection = require("../connections")

// get team names
Router.get('/', (req, res) => {
  mysqlConnection.query(`
    SELECT teams.name FROM teams;`,
    (err, rows, field) => {
      if(err) throw err
    res.end(JSON.stringify(rows))
  })// query
})// get team names

// get titles won by team name
Router.get('/titles/:teamName', (req, res) => {
  let tName = req.params.teamName
  mysqlConnection.query(`
    SELECT season, count(championId) as wonTitle FROM
      (SELECT s.season, s.id as season_id, t.name as team_name, t.id as team_id, count(*) GameId, t.id
      FROM teams t
      INNER JOIN games g ON g.homeId = t.id
      INNER JOIN seasons s ON s.id = g.seasonId
      GROUP BY  s.season, s.id, t.name, t.id) AS team_season
    LEFT JOIN league l ON l.championId = team_season.team_id AND l.seasonId = team_season.season_id
    WHERE team_name like "%${tName}%"
    GROUP BY team_season.season_id, team_season.team_id
    ORDER BY season, team_id;`, 
  (err, rows, fields)=>{
    if(err) throw err
    res.end(JSON.stringify(rows))
  })// query
})// get titles won by team name


// get team information by team name
Router.get("/:teamName", (req,res) =>{
  console.log('in this one ')
  let tName = req.params.teamName
  mysqlConnection.query(`
      SELECT * FROM
      teams t
      WHERE t.name like '%${tName}%';`, 
  (err, rows, fields)=>{
      if(err) throw err
      res.end(JSON.stringify(rows))
  })// query
  })


  
// get player names by team name
Router.get("/players/:teamName", (req,res) =>{
let tName = req.params.teamName
mysqlConnection.query(`
    SELECT p.name FROM rosters r
    INNER JOIN teams t ON r.teamId = t.id
    INNER JOIN players p ON p.id = r.playerId
    INNER JOIN (SELECT MAX(id) as current_year FROM seasons s) s ON s.current_year = r.seasonId
    WHERE t.name like '%${tName}%';`, 
(err, rows, fields)=>{
    if(err) throw err
    res.end(JSON.stringify(rows))
})// query
})// get player names by team name

// get most recent champions from 2019
Router.get("/champs/championRoster", (req,res) =>{
  console.log('hello')
  mysqlConnection.query(`
    SELECT * FROM teams;`, 
(err, rows, fields)=>{
    if(err) throw err
    res.end(JSON.stringify(rows))
})// query
})// get champions


module.exports = Router
