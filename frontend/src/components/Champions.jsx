import React from 'react'
import Table from 'react-bootstrap/Table'

const Champions = props =>
  <>
  <h4>Recent Champions: {props.championData.teamName}</h4>
  <Table id='stats' className='table-bordered table-striped'>
    <thead className='thead-dark'>
      <tr><th>Championship Roster</th></tr>
    </thead>
    <tbody>{props.championData.playerNames.map((name, index) => <tr key={index}><td>{name}</td></tr>)}</tbody>
  </Table>
  </>

export default Champions