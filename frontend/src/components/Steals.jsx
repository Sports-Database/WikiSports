import React from 'react'
import Table from 'react-bootstrap/Table'

const Steals = (props) => { 
  console.log(props.stealsData)
  const renderTable = () => {
    let rows = []
  props.stealsData.map((el,index)=>rows.push(
      <tr key={index}>
        <td><img src={'https://' + el['url']} alt='playerImg'/><br/>{el['name']}</td>
        <td>{el['steals']}</td>
        <td>{el['season']}</td>
      </tr>))
    return <tbody>{rows}</tbody>
  }

  return (
    <>
    <h2>Steals Leaders</h2>
    <Table className='table-striped'>
      <thead className='thead-dark'><tr><th>Name</th><th>Steals</th><th>Year</th></tr></thead>
      {renderTable()}
    </Table>
    </>
  )
}

export default Steals