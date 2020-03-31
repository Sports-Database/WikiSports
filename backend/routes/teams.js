const express = require("express")
const Router = express.Router()
const mysqlConnection = require("../connections")


Router.get("/", (req,res) =>{
    console.log("Doing something")
    mysqlConnection.query("SELECT * FROM teams;" , (err, rows, fields)=>{
        if(err) throw err
        res.end(JSON.stringify(rows));
    })
    console.log("Got out of query")
})

Router.get("/championships/:teamName", (req,res) =>{
    let tName = req.params.teamName
    console.log('Doing championshps')
    mysqlConnection.query(`
        SELECT name, season
        FROM teams
        LEFT OUTER JOIN
        league l
        on championId = teams.id
        LEFT OUTER JOIN
        seasons s
        on s.id = l.seasonId
        WHERE name = '${tName}';
    ` , (err, rows, fields)=>{
        if(err) throw err
        res.end(JSON.stringify(rows));
    })
})

Router.get("/searchTeam/:teamName", (req,res) =>{
    let tName = req.params.teamName
    mysqlConnection.query(`
        select p.name, position, touchdowns, yards, tackles, fumbles, earnings
        from teams
        inner join rosters
        on teams.id = rosters.teamId
        inner join players p
        on p.id = rosters.playerId
        LEFT JOIN
        touchdowns td
        on p.id = td.playerId
        LEFT JOIN
        yards y
        on p.id = y.playerId
        LEFT JOIN
        tackles t
        on p.id = t.playerId
        LEFT JOIN 
        fumbles f
        on p.id = f.playerId
        LEFT JOIN 
        earnings e
        on p.id = e.playerId
        WHERE teams.name = '${tName}';
    ` , (err, rows, fields)=>{
        if(err) throw err
        res.end(JSON.stringify(rows));
    })
})

// console.log('done')


module.exports = Router