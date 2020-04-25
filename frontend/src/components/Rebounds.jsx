import React from 'react'
import Table from 'react-bootstrap/Table'

const Rebounds = props =>
  <>
  <h2>Rebound Leaders</h2>
  <Table className='table-striped'>
    <thead className='thead-dark'><tr><th>Name</th><th>Rebounds</th><th>Year</th></tr></thead>
    <tbody>{
      props.reboundsData.map((el,index)=>
        <tr key={index}>
          <td><img src={'https://' + el['url']} alt='playerImg'/><br/>{el['name']}</td>
          <td>{el['rebounds']}</td>
          <td>{el['season']}</td>
        </tr>)
    }</tbody>
  </Table>
  </>

export default Rebounds