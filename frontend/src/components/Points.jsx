import React, { useState, useEffect } from 'react'
import { Table, Container } from 'react-bootstrap'
import axios from 'axios'

const Points = () => {

  const [ pointsData, setPointsData ] = useState()

  const APIURL  = 'http://localhost:8080'

  function updatePointsData() {
    axios
      .get(APIURL + '/league/points')
      .then(res => setPointsData(res.data))
  }

  useEffect(()=>updatePointsData(),[])

  const numberWithCommas = n => n.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',')

  return (
    pointsData===undefined? <></> :
    <Container>
      <h2>Scoring Leaders</h2>
      <Table className='table-striped'>
        <thead className='thead-dark'><tr><th>Name</th><th>Points</th><th>Year</th></tr></thead>
        <tbody>{
          pointsData.map((el,index)=>
            <tr key={index}>
              <td><img src={'https://' + el['url']} alt='playerImg'/><br/>{el['name']}</td>
              <td>{numberWithCommas(el['points'])}</td>
              <td>{el['season']}</td>
            </tr>)
        }</tbody>
      </Table>
    </Container>)
}

export default Points