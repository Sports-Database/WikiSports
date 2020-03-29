const express = require("express")
const Router = express.Router()
const mysqlConnection = require("../connections")

// get all player stats
Router.get("/", (req,res) =>{
    console.log("Doing something")
    mysqlConnection.query(`
        SELECT * 
        FROM playerStats
        INNER JOIN
        players
        ON players.id = playerStats.playerId;` , (err, rows, fields)=>{
        if(err) throw err
        res.end(JSON.stringify(rows));
    })
    console.log("Got out of query")
})

// Returns the player stats given playerName
Router.get("/:playerName", (req,res) =>{
    mysqlConnection.query(`
        SELECT *
        FROM playerStats
        INNER JOIN
        players
        ON players.id = playerStats.playerId
        WHERE players.name = ?;` ,[req.params.playerName.toLowerCase()], 
        (err, rows, fields)=>{
            if(err) throw err
            res.end(JSON.stringify(rows));
        })
})


module.exports = Router