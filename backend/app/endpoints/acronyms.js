// import
const sql     = require('../connections') // connected db
const express = require('express')
const router  = express.Router() // express route handler

// get all acronyms and what they stand for
router.get("/", (req,res) =>{
  sql.query(`
    SELECT * FROM acronyms;`, 
  (err, rows, fields)=>{
    if(err) throw err
    res.end(JSON.stringify(rows))
  })
})// get what acronym stands for by acronym

// get what acronym stands for by acronym
router.get("/help/:acronymName", (req,res) =>{
  let acro = req.params.acronymName
  sql.query(`
    SELECT * FROM acronyms WHERE acronym = '${acro}';`, 
  (err, rows, fields)=>{
    if(err) throw err
    res.end(JSON.stringify(rows))
  })
})// get what acronym stands for by acronym

module.exports = router
