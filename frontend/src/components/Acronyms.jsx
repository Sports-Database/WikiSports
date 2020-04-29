import React, { useState, useEffect } from 'react'
import { Table, Container } from 'react-bootstrap'
import axios from 'axios'

const Acronyms = () => {

  const [ acronyms, setAcronyms ] = useState()

  const APIURL  = 'http://localhost:8080'

  function updateAcronyms() {
    axios
      .get(APIURL + '/acronyms')
      .then(res => setAcronyms(res.data))
  }

  useEffect(()=>updateAcronyms(),[])

  return (
    acronyms===undefined? <></> :
    <Container>
      <Table id='stats' className='table table-bordered table-striped'>
        <thead className='thead-dark'>
          <tr><th>Statistic</th><th>Acronym</th></tr>
        </thead>
        <tbody>{
          acronyms.map((a,i) => <tr key={i}><td>{a.fullName}</td><td>{a.acronym}</td></tr>)
        }</tbody>
      </Table>
  </Container>
)}


export default Acronyms