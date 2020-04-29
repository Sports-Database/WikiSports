import React, { useState, useEffect } from 'react'
import { Table, Container } from 'react-bootstrap'
import axios from 'axios'
import { Link } from 'react-router-dom'
import {APIURL} from "./URL.jsx"

const Players = () => {

  const [ players, setPlayers ] = useState()


  function getPlayers() {
    axios
      .get(APIURL + '/players')
      .then(res => setPlayers(res.data))
  }

  useEffect(()=>getPlayers(),[])

  return(
    players===undefined? <></> :
    <Container>
      <Table id='stats' className='table-striped'>
        <thead className='thead-dark'><tr><th>Players</th></tr></thead>
        <tbody>{players.map((p, i) => 
          <tr key={i}><td><Link to={`players/${p.id}`}>{p.name}</Link></td></tr>)
        }</tbody>
      </Table>
    </Container>)
}

export default Players