import React, { useState, useEffect } from 'react'
import { Table, Container } from 'react-bootstrap'
import axios from 'axios'
import {APIURL} from "./URL.jsx"

const Rebounds = () => {

  const [ reboundsData, setReboundsData ] = useState()


  useEffect(()=>updateReboundsData(),[])

  function updateReboundsData() {
    axios
      .get(APIURL + '/league/rebounds')
      .then(res => setReboundsData(res.data))
  }

  return (
    reboundsData===undefined? <></> :
      <Container>
      <h2>Rebound Leaders</h2>
      <Table className='table-striped'>
        <thead className='thead-dark'><tr><th>Name</th><th>Rebounds</th><th>Year</th></tr></thead>
        <tbody>{
          reboundsData.map((el,index)=>
            <tr key={index}>
              <td><img src={'https://' + el['url']} alt='playerImg'/><br/>{el['name']}</td>
              <td>{el['rebounds']}</td>
              <td>{el['season']}</td>
            </tr>)
        }</tbody>
      </Table>
    </Container>)
}

export default Rebounds