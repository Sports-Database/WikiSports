import React from 'react'
import Table from 'react-bootstrap/Table'

const MostChampionships = props =>
  <>
  <h2>Most Championships</h2>
  <Table className='table-striped'>
    <thead className='thead-dark'><tr><th>Name</th><th>Number of Championships</th></tr></thead>
    {props.mostChampionshipsData.map((el,index)=>
      <tr key={index}>
        <td><img src={'https://' + el['url']} alt='playerImg'/><br/>{el['name']}</td>
        <td>{el['totalWins']}</td>
      </tr>)}
  </Table>
  </>

export default MostChampionships