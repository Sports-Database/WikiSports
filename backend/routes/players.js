const express = require("express")
const Router = express.Router()
const mysqlConnection = require("../connections")


// player stats by the year
Router.get("/playerStats/:playerId", (req,res) =>{
    let pId = req.params.playerId
    mysqlConnection.query(`
        SELECT se.season, sum(Rebounds) AS Rebounds, sum(Assists) AS Assists, 
        sum(PersonalFouls) AS PersonalFouls,sum(Steals) AS Steals, sum(Points) AS Points
        FROM seasons se
        INNER JOIN
        games g
        ON
        g.seasonId = se.id
        INNER JOIN
        stats s
        ON s.GameId = g.GameId
        INNER JOIN
        players p
        on p.id = Playerid
        WHERE name  like '%${pId}%'
        GROUP BY season;`, 
    (err, rows, fields)=>{
        if(err) throw err
        res.end(JSON.stringify(rows));
    })
})

// careerStats
Router.get("/careerStats/:playerId", (req,res) =>{
    let pId = req.params.playerId
    mysqlConnection.query(`
        SELECT sum(Rebounds) AS Rebounds, sum(Assists) AS Assists, 
        sum(PersonalFouls) AS PersonalFouls,sum(Steals) AS Steals, sum(Points) AS Points
        FROM games g
        INNER JOIN
        stats s
        ON s.GameId = g.GameId
        INNER JOIN
        players p
        ON p.id = Playerid
        WHERE name LIKE '%${pId}%';`, 
    (err, rows, fields)=>{
        if(err) throw err
        res.end(JSON.stringify(rows));
    })
})

// Earnings
Router.get("/earnings/:playerId", (req,res) =>{
    let pId = req.params.playerId
    mysqlConnection.query(`
    SELECT length, c.salaryPerYear FROM contracts c
    INNER JOIN
    players p
    ON
    c.playerId = p.id
    WHERE p.name like '%${pId}%';`, 
    (err, rows, fields)=>{
        if(err) throw err
        res.end(JSON.stringify(rows));
    })
})





module.exports = Router