// import
const sql     = require('../connections') // connected db
const express = require('express')
const router  = express.Router() // express route handler


// team with largest fan base
router.get("/fanbase", (req,res) =>{
  let tName = req.params.teamName
  sql.query(`
    SELECT t.name, t.url, t.fanbase 
      FROM teams t
      ORDER BY t.fanbase DESC;
    `, 
  (err, rows, fields)=>{
      if(err) throw err
      res.end(JSON.stringify(rows))
  })
})

// get mvp of every season
router.get('/mvp', (req,res) => {
  sql.query(`
    SELECT 
      s.season,
      p.name,
      p.url
    FROM league
    INNER JOIN players p ON p.id = MVPId
    INNER JOIN seasons s on s.id = league.seasonId;
    `,
    (err, rows, fields) => {
      if(err) throw err
      res.end(JSON.stringify(rows));
  })
})

// gets the leader in rebounds for every season
router.get('/rebounds', (req,res) => {
  sql.query(`
      SELECT 
          s.season,
          p.name,
          rebounds,
          p.url
      FROM league
      INNER JOIN players p ON p.id = reboundLeaderId
      INNER JOIN 
          (SELECT  p.name, seasonId, SUM(Rebounds) as rebounds
          from stats s
          INNER JOIN games g ON g.GameId = s.GameId
          INNER JOIN players p ON p.id = s.playerId
          GROUP BY p.name, seasonId) as allRebounds
      ON allRebounds.seasonId = league.seasonId AND allRebounds.name = p.name
      INNER JOIN seasons s ON s.id = league.seasonId;
      `,
    (err, rows, fields) => {
      if(err) throw err
      res.end(JSON.stringify(rows));
  })
})

// gets best points for player of every season
router.get('/points', (req,res) => {
  sql.query(`
  SELECT 
      s.season,
      p.name,
      points,
      p.url
  FROM league
  INNER JOIN players p ON p.id = scoringLeaderId
  INNER JOIN 
      (SELECT  p.name, seasonId, SUM(Points) as points
      from stats s
      INNER JOIN games g ON g.GameId = s.GameId
      INNER JOIN players p ON p.id = s.playerId
      GROUP BY p.name, seasonId) as allPoints
  ON allPoints.seasonId = league.seasonId AND allPoints.name = p.name
  INNER JOIN seasons s ON s.id = league.seasonId;
  `,
    (err, rows, fields) => {
      if(err) throw err
      res.end(JSON.stringify(rows));
  })
})

// gets best assist player for every season
router.get('/assists', (req,res) => {
  sql.query(`
  SELECT 
      s.season,
      p.name,
      assists,
      p.url
  FROM league
  INNER JOIN players p ON p.id = assistLeaderId
  INNER JOIN 
      (SELECT  p.name, seasonId, SUM(Assists) as assists
      from stats s
      inner join games g on g.GameId = s.GameId
      inner join players p on p.id = s.playerId
      group by p.name, seasonId) as allAssists
  ON allAssists.seasonId = league.seasonId AND allAssists.name = p.name
  INNER JOIN seasons s on s.id = league.seasonId;
  `,
    (err, rows, fields) => {
      if(err) throw err
      res.end(JSON.stringify(rows));
  })
})

// gets best steals for every season
router.get('/steals', (req,res) => {
sql.query(`
  SELECT
    se.season,
    p.name,
    maxxSteals as steals,
    p.url
  FROM players p
  INNER JOIN
  (SELECT DISTINCT seasonId, maxxSteals, max(pId) as pId
    FROM
    (SELECT seasonId sId, playerId pId, sum(steals) sSteals 
    FROM stats thisStats
    INNER JOIN games gg ON gg.GameId = thisStats.GameId
    GROUP BY sId, pId) as stealSum
    INNER JOIN
    (select seasonId, max(steals) maxxSteals
    FROM
        (select seasonId, playerId, sum(steals) as steals from stats s
        INNER JOIN games g ON g.GameId = s.GameId
        GROUP BY seasonId, playerId) as mostSteals
    GROUP BY seasonId) as maxSteals
    ON maxSteals.maxxSteals = sSteals
    GROUP BY seasonId, maxxSteals) as steals ON steals.pId = p.id
  INNER JOIN seasons se ON se.id = seasonId;
  `,
  (err, rows, fields) => {
    if(err) throw err
    res.end(JSON.stringify(rows));
  })
})

// get player with most championships for every season
router.get('/mostChampionships', (req,res) => {
  sql.query(`
  SELECT  p.name, totalWins, p.url
  FROM		(SELECT playerId , count(playerId) as totalWins
  FROM league
  INNER JOIN teams t    ON t.id = league.championId
  INNER JOIN rosters r  ON t.id = r.teamId AND r.seasonId = league.seasonId
  GROUP BY playerId
  ORDER BY totalWins DESC
  LIMIT 5) as wins INNER JOIN players p on p.id = wins.playerId;`,
    (err, rows, fields) => {
      if(err) throw err
      res.end(JSON.stringify(rows));
  })// query
})//

module.exports = router
