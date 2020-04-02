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

Router.get("/about/:teamName", (req,res) =>{
    let tName = req.params.teamName
    mysqlConnection.query(`
        select s.season, p.name, championships.wins as 'team_has_won' from seasons s
        join
        rosters r
        on s.id = r.seasonId
        join
        players p
        on p.id = r.playerId
        join
        teams t
        on t.id = r.teamId
        left join
        league
        on league.championId = teamId
        left join
        (SELECT name, season, count(season) as 'wins'
                FROM teams
                LEFT OUTER JOIN
                league l
                on championId = teams.id
                LEFT OUTER JOIN
                seasons s
                on s.id = l.seasonId
                group by name, season) championships
        on championships.name = t.name
        where t.name = '${tName}'
        order by t.id;
    ` , (err, rows, fields)=>{
        if(err) throw err
        res.end(JSON.stringify(rows));
    })
})


Router.get("/teamCareerStats/:teamName", (req,res) =>{
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