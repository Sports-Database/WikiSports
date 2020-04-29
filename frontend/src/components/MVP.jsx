import React, { useState, useEffect } from 'react'
import { Table, Row, Col, Container } from 'react-bootstrap'
import axios from 'axios'

const MVP = () => {

  const [ mvpData, setMvpData ] = useState([])

  const APIURL  = 'http://localhost:8080'

  function updateMVPs() {
    axios
      .get(APIURL + '/league/mvp')
      .then(res => setMvpData(res.data))
  }

  useEffect(( )=> {
    updateMVPs()
    return () => setMvpData(undefined)
  },[])

  return (
    mvpData===undefined? <></> :
    <Container>
      <h2>Most Valuable Players</h2>
      <Table className='table-striped'>
        <thead className='thead-dark'><tr><th>Name</th><th>Year</th></tr></thead>
        {mvpData.map((el,i) =>
          <Row key={i}>
            <Col><img src={'https://' + el['url']} alt='playerImg'/><br/>{el['name']}</Col>
            <Col>{el['season']}</Col>
          </Row>)}
      </Table>
    </Container>
)}



export default MVP