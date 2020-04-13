const express = require("express")
const Router = express.Router()
const mysqlConnection = require("../connections")


//------- Get all Acronyms and what they stand for ------------
Router.get("/", (req,res) =>{
  mysqlConnection.query(`
    SELECT * FROM acronyms;`, 
  (err, rows, fields)=>{
    if(err) throw err
    res.end(JSON.stringify(rows))
  })// query
})


// ------- Get what specific acronym stands for -------------------
Router.get("/help/:acronymName", (req,res) =>{
    let acro = req.params.acronymName
    mysqlConnection.query(`
        SELECT *
        FROM acronyms
        WHERE acronym = '${acro}';`, 
    (err, rows, fields)=>{
        if(err) throw err
        res.end(JSON.stringify(rows));
    })
})



module.exports = Router // export
