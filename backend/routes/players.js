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

Router.get("/:playerName", (req,res) =>{
    let pName = req.params.playerName
    let arr = pName.split(' ')
    mysqlConnection.query(`
        SELECT p.id, p.name, p.position, 
            (select count(*) from touchdowns 
            where touchdowns.playerId = p.id) as 'total_games',
            sum(td.touchdowns) 'touchdowns', sum(y.yards) 'yards',
            sum(t.tackles) 'tackles', sum(f.fumbles) 'fumbles',
            sum(e.earnings) 'earnings'
        FROM players p
        INNER JOIN
        touchdowns td
        on p.id = td.playerID
        INNER JOIN
        yards y
        on p.id = y.playerID
        INNER JOIN
        tackles t
        on p.id = t.playerId
        INNER JOIN 
        fumbles f
        on p.id = f.playerId
        INNER JOIN
        earnings e
        on p.id = e.playerId
        WHERE players.name = ${arr[1]}, ${arr[0]};
        group by p.id;` , 
        (err, rows, fields)=>{
            if(err) throw err
            res.end(JSON.stringify(rows));
        })
})

module.exports = Router