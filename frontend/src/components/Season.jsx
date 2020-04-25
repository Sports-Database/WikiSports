import React from 'react'
import Table from 'react-bootstrap/Table'

const Season = props =>
  <>
  <h4>Seasonal Stats</h4>
  <Table id='stats' className='table-bordered'>
    <thead className='thead-dark'>
      <tr>
        <th>SEASON</th>
        <th>POINTS</th>
        <th>REBOUNDS</th>
        <th>ASSISTS</th>
        <th>STEALS</th>
      </tr>
    </thead>
    <tbody>{props.stats.map((stat, i)=>
      <tr key={i}>
        <td>{stat['season']}</td>
        <td>{stat['Points']}</td>
        <td>{stat['Rebounds']}</td>
        <td>{stat['Assists']}</td>
        <td>{stat['Steals']}</td>
      </tr>
    )}</tbody>
  </Table>
  </>

export default Season