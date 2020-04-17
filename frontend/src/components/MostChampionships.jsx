import React from 'react'
import Table from 'react-bootstrap/Table'

const MostChampionships = (props) => { 
  
  const renderTable = () => {
    let rows = []
  props.mostChampionshipsData.map((el,index)=>rows.push(
      <tr key={index}>
        <td><img src={'https://' + el['url']} alt='playerImg'/><br/>{el['name']}</td>
        <td>{el['totalWins']}</td>
      </tr>))
    return <tbody>{rows}</tbody>
  }

  return (
    <>
    <h2>Most Championships</h2>
    <Table className='table-striped'>
      <thead className='thead-dark'><tr><th>Name</th><th>Number of Championships</th></tr></thead>
      {renderTable()}
    </Table>
    </>
)}

export default MostChampionships