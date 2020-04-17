import React from 'react'
import Table from 'react-bootstrap/Table'

const Assists = (props) => { 
  const renderTable = () => {
    let rows = []
  props.assistsData.map((el,index)=>rows.push(
      <tr key={index}>
        <td><img src={'https://' + el['url']} alt='playerImg'/><br/>{el['name']}</td>
        <td>{el['assists']}</td>
        <td>{el['season']}</td>
      </tr>))
    return <tbody>{rows}</tbody>
  }

  return (
    <>
    <h2>Assists Leaders</h2>
    <Table className='table-striped'>
      <thead className='thead-dark'><tr><th>Name</th><th>Assists</th><th>Year</th></tr></thead>
      {renderTable()}
    </Table>
    </>
  )
}

export default Assists