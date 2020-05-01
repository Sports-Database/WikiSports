import React, { useState, useEffect } from 'react'
import { Table, Container } from 'react-bootstrap'
import axios from 'axios'
import {APIURL} from "./URL.jsx"

const Most = () => {

  const [ mostChampionshipsData, setMostChampionshipsData ] = useState()


  function updateMostChampionshipsData() {
    axios
      .get(APIURL + '/league/mostChampionships')
      .then(res => setMostChampionshipsData(res.data))
  }

  useEffect(()=>updateMostChampionshipsData(),[])

  return (
    mostChampionshipsData===undefined? <></> :
    <Container>
      <h2>Most Championships</h2>
      <Table className='table-striped'>
        <thead className='thead-dark'><tr><th>Name</th><th>Number of Championships</th></tr></thead>
        {mostChampionshipsData.map((el,index)=>
          <tr key={index}>
            <td><img src={'https://' + el['url']} alt='playerImg'/><br/>{el['name']}</td>
            <td>{el['totalWins']}</td>
          </tr>)}
      </Table>
    </Container>
)}


export default Most