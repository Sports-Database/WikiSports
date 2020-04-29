import React from 'react'
import Table from 'react-bootstrap/Table'

const Assists = props =>
  <>
  <h2>Assists Leaders</h2>
  <Table className='table-striped'>
    <thead className='thead-dark'><tr><th>Name</th><th>Assists</th><th>Year</th></tr></thead>
    <tbody>{props.assistsData.map((el,index)=>
      <tr key={index}>
        <td><img src={'https://' + el['url']} alt='playerImg'/><br/>{el['name']}</td>
        <td>{el['assists']}</td>
        <td>{el['season']}</td>
      </tr>)
    }</tbody>
  </Table>
  </>

export default Assists