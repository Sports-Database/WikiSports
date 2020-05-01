import React, { useState, useEffect } from 'react'
import { Table, Container } from 'react-bootstrap'
import axios from 'axios'
import { Link } from 'react-router-dom'
import {APIURL} from "./URL.jsx"

const Teams = () => {

  const [ teams, setTeams ] = useState()

  useEffect(()=>initTeams(),[])

  const initTeams = () => {
    axios
      .get(APIURL + '/teams')
      .then(res => setTeams(res.data))
  }

  return(
  teams===undefined? <></> :
  <Container>
    <Table className='table-striped'>
      <thead className='thead-dark'><tr><th>Teams</th></tr></thead>
      <tbody>{teams.map((obj, i) => <tr key={i}><td><Link to={`teams/${obj.id}`}>{obj.name}</Link></td></tr>)}</tbody>
    </Table>
  </Container>)
}

export default Teams