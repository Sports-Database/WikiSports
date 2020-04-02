const express = require("express")
const Router = express.Router()
const mysqlConnection = require("../connections")


Router.get("/", (req,res) =>{
    console.log("Doing something")
    mysqlConnection.query("SELECT * FROM players;" , (err, rows, fields)=>{
        if(err) throw err
        res.end(JSON.stringify(rows));
    })
    console.log("Got out of query")
})


// search for player by name
Router.get("/careerstats/:playerName", (req,res) =>{
    let pName = req.params.playerName
    let arr = pName.split(' ')
    console.log(`looking for ${arr[1]} ${arr[0]}`)
    mysqlConnection.query(`
        SELECT p.id, p.name, p.position, 
        (select count(*) from touchdowns 
        where touchdowns.playerId = p.id) as 'total_games',
        sum(td.touchdowns) 'touchdowns', sum(y.yards) 'yards',
        sum(t.tackles) 'tackles', sum(f.fumbles) 'fumbles',
        sum(e.earnings) 'earnings', te.name as 'current_team'
        FROM players p
        LEFT JOIN
        touchdowns td
        on p.id = td.playerID
        LEFT JOIN
        yards y
        on p.id = y.playerID
        LEFT JOIN
        tackles t
        on p.id = t.playerId
        LEFT JOIN 
        fumbles f
        on p.id = f.playerId
        LEFT JOIN
        earnings e
        on p.id = e.playerId
        LEFT JOIN
        rosters r
        on r.playerId = p.id
        LEFT JOIN
        teams te
        on r.teamId = te.id
        left join
        seasons s
        on s.id = r.seasonId AND s.season = 2020
        WHERE p.name = '${arr[1]}, ${arr[0]}'
        group by p.id, te.id; 
                        ` , 
        (err, rows, fields)=>{
            if(err) throw err
            res.end(JSON.stringify(rows));
        })
})

Router.get("/stats/:playerName", (req,res) =>{ // still working on this
    let pName = req.params.playerName
    let arr = pName.split(' ')
    console.log(`looking for ${arr[1]} ${arr[0]}`)
    mysqlConnection.query(`
        SELECT p.id, p.name, p.position, 
            (select count(*) from touchdowns 
            where touchdowns.playerId = p.id) as 'total_games',
            sum(td.touchdowns) 'touchdowns', sum(y.yards) 'yards',
            sum(t.tackles) 'tackles', sum(f.fumbles) 'fumbles',
            sum(e.earnings) 'earnings'
        FROM players p
        LEFT JOIN
        touchdowns td
        on p.id = td.playerID
        LEFT JOIN
        yards y
        on p.id = y.playerID
        LEFT JOIN
        tackles t
        on p.id = t.playerId
        LEFT JOIN 
        fumbles f
        on p.id = f.playerId
        LEFT JOIN
        earnings e
        on p.id = e.playerId
        WHERE p.name = '${arr[1]}, ${arr[0]}'
        group by p.id;` , 
        (err, rows, fields)=>{
            if(err) throw err
            res.end(JSON.stringify(rows));
        })
})


Router.get("/:stat", (req,res) =>{
    let statName = req.params.stat
    mysqlConnection.query(`
        SELECT p.id, p.name, sum(${statName}) as '${statName}'
        FROM players p
        LEFT JOIN
        touchdowns td
        on p.id = td.playerID
        LEFT JOIN
        yards y
        on p.id = y.playerID
        LEFT JOIN
        tackles t
        on p.id = t.playerId
        LEFT JOIN 
        fumbles f
        on p.id = f.playerId
        LEFT JOIN
        earnings e
        on p.id = e.playerId
        WHERE ${statName} is not null
        group by p.id;` , 
        (err, rows, fields)=>{
            if(err) throw err
            res.end(JSON.stringify(rows));
        })
})


Router.get("/mvp", (req,res) =>{
    mysqlConnection.query(`
        select season, players.name as 'MVP'
        from league
        inner join seasons
        on seasons.id = league.seasonId
        inner join players
        on players.id = MVPId;
           ` , 
        (err, rows, fields)=>{
            if(err) throw err
            res.end(JSON.stringify(rows));
        })
})

Router.get("/earnings/:playerName", (req,res) =>{
    let pName = req.params.playerName
    let arr = pName.split(' ')
    mysqlConnection.query(`
        SELECT players.id, name, SUM(earnings) as 'career_earnings'
        FROM players
        INNER JOIN
        earnings e
        ON e.playerId = players.id
        WHERE name = '${arr[1]}, ${arr[0]}'
        group by players.id
        order by id;
           ` , 
        (err, rows, fields)=>{
            if(err) throw err
            res.end(JSON.stringify(rows));
        })
})



module.exports = Router