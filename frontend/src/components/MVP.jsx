import React from 'react'
import Table from 'react-bootstrap/Table'

const MVP = props =>
  <>
  <h2>Most Valuable Players</h2>
  <Table className='table-striped'>
    <thead className='thead-dark'><tr><th>Name</th><th>Year</th></tr></thead>
    <tbody>{props.mvpData.map((el,index) =>
      <tr key={index}>
        <td><img src={'https://' + el['url']} alt='playerImg'/><br/>{el['name']}</td>
        <td>{el['season']}</td>
      </tr>)
    }</tbody>
  </Table>
  </>

export default MVP