const express = require("express")
const Router = express.Router()
const mysqlConnection = require("../connections")



// get all acronyms
Router.get("/", (req,res) =>{
    console.log("Doing something")
    mysqlConnection.query("SELECT * FROM acronyms;" , (err, rows, fields)=>{
        if(err) throw err
        res.end(JSON.stringify(rows));
    })
    console.log("Got out of query")
})

// this is a test.
Router.get("/eli", (req,res) =>{
    console.log("Doing something with eli")
    mysqlConnection.query("SELECT * FROM acronyms;" , (err, rows, fields)=>{
        if(err) throw err
        res.end(JSON.stringify(rows));
    })
    console.log("Got out of query with eli")
})






module.exports = Router