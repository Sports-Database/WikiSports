// import
const sql     = require('../connections') // connected db
const express = require('express')
const router  = express.Router() // express route handler

// /players
router.get('/', (req,res) => {
  sql.query(`
    SELECT * FROM players;`,
    (err, rows, fields) => {
      if(err) throw err
      res.end(JSON.stringify(rows))
  })
})// get player ids and player names

router.get('/id/:id', (req,res) => {
  let id = req.params.id
  sql.query(`
    SELECT p.name, p.url
    FROM players p
    WHERE p.id = ${id};` ,
  (err, rows, fields) => {
    if(err) throw err
    res.end(JSON.stringify(rows))
  })
})


// /player name by search query
router.get('/:playerName', (req,res) => {
  let pName = req.params.playerName
  sql.query(`
      SELECT p.name, p.url
      FROM players p
      WHERE p.name LIKE '%${pName}%';` ,
    (err, rows, fields) => {
      if(err) throw err
      res.end(JSON.stringify(rows))
  })
})

// /players/teams/<playerName>
router.get('/team/:playerName', (req,res) => {
  let pName = req.params.playerName
  sql.query(`
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
          res.end(JSON.stringify(rows))
  })
})// get most recent team a player has played for by player name

module.exports = router