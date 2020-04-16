const express = require("express")
const router = express.Router()
const mysqlConnection = require("../connections")


// gets the leader in rebounds for every season
router.get('/rebounds', (req,res) => {
    mysqlConnection.query(`
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
    })// query
  })// 


  // gets best points for player of every season
  router.get('/points', (req,res) => {
    mysqlConnection.query(`
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
    })// query
  })// 

    // gets best assist player for every season
  router.get('/assists', (req,res) => {
    mysqlConnection.query(`
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
        INNER JOIN games g ON g.GameId = s.GameId
        INNER JOIN players p ON p.id = s.playerId
        GROUP BY p.name, seasonId) as allAssists
    ON allAssists.seasonId = league.seasonId AND allAssists.name = p.name
    INNER JOIN seasons s ON s.id = league.seasonId;
    `,
      (err, rows, fields) => {
        if(err) throw err
        res.end(JSON.stringify(rows));
    })// query
  })// 


   // gets best steals for every season
  router.get('/steals', (req,res) => {
    mysqlConnection.query(`
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
    })// query
  })//

  // get player with most championships for every season
  router.get('/mostChampionships', (req,res) => {
    mysqlConnection.query(`
        SELECT 
            p.name,
            totalWins,
            p.url
        FROM
            (SELECT MIN(wins.playerId) as pId, MAX(wins.championShipWins) totalWins
            FROM 
                (SELECT playerId , count(playerId) as championShipWins
                FROM league
                INNER JOIN teams t    ON t.id = league.championId
                INNER JOIN rosters r  ON t.id = r.teamId AND r.seasonId = league.seasonId
                GROUP BY playerId) as wins) as maxWin
        INNER JOIN players p ON maxWin.pId = p.id;
    `,
      (err, rows, fields) => {
        if(err) throw err
        res.end(JSON.stringify(rows));
    })// query
  })//


module.exports = router // export
