import React, { useState, useEffect } from 'react'
import { Table, Container } from 'react-bootstrap'
import axios from 'axios'
import {APIURL} from "./URL.jsx"

const MVP = () => {

  const [ mvpData, setMvpData ] = useState([])


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
          <tr key={i}>
            <td><img src={'https://' + el['url']} alt='playerImg'/><br/>{el['name']}</td>
            <td>{el['season']}</td>
          </tr>)}
      </Table>
    </Container>
)}



export default MVP