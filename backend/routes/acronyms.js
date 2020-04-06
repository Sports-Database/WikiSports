const express = require("express")
const Router = express.Router()
const mysqlConnection = require("../connections")


// player stats by the year
Router.get("/help/:acronymName", (req,res) =>{
    let acro = req.params.acronymName
    mysqlConnection.query(`
        SELECT *
        FROM acronyms
        WHERE acronym = '${acro}'`, 
    (err, rows, fields)=>{
        if(err) throw err
        res.end(JSON.stringify(rows));
    })
})

module.exports = Router