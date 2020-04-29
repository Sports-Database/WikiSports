import React, { useState, useEffect } from 'react'
import { Table, Container } from 'react-bootstrap'
import axios from 'axios'
import {APIURL} from "./URL.jsx"

const Steals = () => {

  const [ stealsData, setStealsData ] = useState()


  useEffect(()=>updateStealsData(),[])

  function updateStealsData() {
    axios
      .get(APIURL + '/league/steals')
      .then(res => setStealsData(res.data))
  }

  return (
    stealsData===undefined? <></> :
    <Container>
      <h2>Steals Leaders</h2>
      <Table className='table-striped'>
        <thead className='thead-dark'><tr><th>Name</th><th>Steals</th><th>Year</th></tr></thead>
        <tbody>{
          stealsData.map((el,index) =>
            <tr key={index}>
              <td><img src={'https://' + el['url']} alt='playerImg'/><br/>{el['name']}</td>
              <td>{el['steals']}</td>
              <td>{el['season']}</td>
            </tr>)
        }</tbody>
      </Table>
    </Container>
)}

export default Steals