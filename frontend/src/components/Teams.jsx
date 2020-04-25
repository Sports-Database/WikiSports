import React from 'react'
import Table from 'react-bootstrap/Table'

const Teams = props =>
  <Table className='table-striped'>
    <thead className='thead-dark'><tr><th>Teams</th></tr></thead>
    <tbody>{props.teams.map((name, index) => <tr key={index}><td>{name}</td></tr>)}</tbody>
  </Table>

export default Teams