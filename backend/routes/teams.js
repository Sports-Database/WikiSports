const express = require("express")
const Router = express.Router()
const mysqlConnection = require("../connections")


// player stats by the year
Router.get("/titles/:teamId", (req,res) =>{
    let tId = req.params.teamId
    mysqlConnection.query(`
        SELECT season, count(championId) as wonTitle 
        FROM
            (SELECT s.season, s.id as season_id, t.name as team_name, t.id as team_id, count(*) GameId, t.id
            FROM teams t
            INNER JOIN
            games g
            on g.homeId = t.id
            INNER JOIN 
            seasons s
            on s.id = g.seasonId
            GROUP BY  s.season, s.id, t.name, t.id) AS team_season
        LEFT JOIN
        league l
        ON l.championId = team_season.team_id AND l.seasonId = team_season.season_id
        WHERE team_name like "%${tId}%"
        GROUP BY team_season.season_id, team_season.team_id
        ORDER BY season, team_id;`, 
    (err, rows, fields)=>{
        if(err) throw err
        res.end(JSON.stringify(rows));
    })
})

Router.get("/players/:teamId", (req,res) =>{
    let tId = req.params.teamId
    mysqlConnection.query(`
        SELECT p.name
        FROM rosters r
        INNER JOIN
        teams t
        ON r.teamId = t.id
        INNER JOIN
        players p
        ON p.id = r.playerId
        INNER JOIN
        (SELECT MAX(id) as current_year FROM seasons s) s
        ON s.current_year = r.seasonId
        WHERE t.name like '%${tId}%';`, 
    (err, rows, fields)=>{
        if(err) throw err
        res.end(JSON.stringify(rows));
    })
})

Router.get("/championRoster", (req,res) =>{
    mysqlConnection.query(`
        SELECT p.name 
        FROM league l
        INNER JOIN teams t
        ON t.id = l.championId
        INNER JOIN rosters r
        ON r.teamId = t.id
        INNER JOIN players p
        ON p.id = r.playerId
        WHERE l.seasonId = 3;`, 
    (err, rows, fields)=>{
        if(err) throw err
        res.end(JSON.stringify(rows));
    })
})


module.exports = Router