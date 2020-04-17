import React from 'react'
import Table from 'react-bootstrap/Table'

const numberWithCommas = (num) => num.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',')

const PPG = (props) => { 
  const renderTable = () => {
    let rows = []
  props.ppgData.map((el,index)=>rows.push(
      <tr key={index}>
        <td><img src={'https://' + el['url']} alt='playerImg'/><br/>{el['name']}</td>
        <td>{numberWithCommas(el['points'])}</td>
        <td>{el['season']}</td>
      </tr>))
    return <tbody>{rows}</tbody>
  }

  return (
    <>
    <h2>Scoring Leaders</h2>
    <Table className='table-striped'>
      <thead className='thead-dark'><tr><th>Name</th><th>Points</th><th>Year</th></tr></thead>
      {renderTable()}
    </Table>
    </>
  )
}

export default PPG