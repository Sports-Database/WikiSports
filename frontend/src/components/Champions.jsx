import React, { useState, useEffect } from 'react'
import { Table, Container } from 'react-bootstrap'
import axios from 'axios'
import { Link } from 'react-router-dom'

const Champions = () => {

  const [ championData, setChampionData ] = useState()

  const APIURL  = 'http://localhost:8080'
  const HOMEURL = 'http://localhost:80'

  function updateChampions() {
    axios
      .get(APIURL + '/teams/champs/championRoster')
      .then(res => {
        //console.log(res.data)
        setChampionData(res.data)})
  }

  useEffect(()=>updateChampions(),[])

  return (
    championData===undefined? <></> :
    <Container>
      <h4>Recent Champions: {championData[0].teamName}</h4>
      <Table id='stats' className='table-bordered table-striped'>
        <thead className='thead-dark'>
          <tr><th>Championship Roster</th></tr>
        </thead>
        <tbody>{championData.map((obj, index) => <tr key={index}><td><Link onClick={() => window.location = HOMEURL + '/players/' + obj.id}>{obj.playerName}</Link></td></tr>)}</tbody>
      </Table>
    </Container>
)}

export default Champions