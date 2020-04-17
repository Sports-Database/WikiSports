import React from 'react'
import Table from 'react-bootstrap/Table'

const MVP = (props) => { 
  const renderTable = () => {
    let rows = []
    props.mvpData.map((el,index)=>rows.push(
      <tr key={index}>
        <td><img src={'https://' + el['url']} alt='playerImg'/><br/>{el['name']}</td>
        <td>{el['season']}</td>
      </tr>))
    return <tbody>{rows}</tbody>
  }

  return (
    <>
    <h2>Most Valuable Players</h2>
    <Table className='table-striped'>
      <thead className='thead-dark'><tr><th>Name</th><th>Year</th></tr></thead>
      {renderTable()}
    </Table>
    </>
  )
}

export default MVP