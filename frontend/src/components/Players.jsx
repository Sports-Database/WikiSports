import React from 'react'
import Table from 'react-bootstrap/Table'

const Players = props =>
  <Table id='stats' className='table-striped'>
    <thead className='thead-dark'><tr><th>Players</th></tr></thead>
    <tbody>{props.players.map((name, index) => 
      <tr key={index}><td>{name}</td></tr>)
    }</tbody>
  </Table>

export default Players