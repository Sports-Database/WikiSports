const express = require("express")
const Router = express.Router()
const mysqlConnection = require("../connections")
Router.get("/", (req,res) =>{
    console.log("Doing something")
    mysqlConnection.query("SELECT * FROM playerStats;" , (err, rows, fields)=>{
        if(err) throw err
        res.end(JSON.stringify(rows));
    })
    console.log("Got out of query")
})


module.exports = Router