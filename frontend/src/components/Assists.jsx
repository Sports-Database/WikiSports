import React, { useState, useEffect } from 'react'
import { Table, Container } from 'react-bootstrap'
import axios from 'axios'

const Assists = () => {

  const [ assistsData, setAssistsData ] = useState()

  const APIURL  = 'http://localhost:8080'

  function updateAssistsData() {
    axios.get(APIURL + '/league/assists')
    .then(res => setAssistsData(res.data))
  }

  useEffect(()=>updateAssistsData(),[])

  return (
    assistsData===undefined? <></> :
    <Container>
      <h2>Assists Leaders</h2>
      <Table className='table-striped'>
        <thead className='thead-dark'><tr><th>Name</th><th>Assists</th><th>Year</th></tr></thead>
        <tbody>{assistsData.map((el,index)=>
          <tr key={index}>
            <td><img src={'https://' + el['url']} alt='playerImg'/><br/>{el['name']}</td>
            <td>{el['assists']}</td>
            <td>{el['season']}</td>
          </tr>)
        }</tbody>
      </Table>
    </Container>
)}

export default Assists