import React from 'react'
import Table from 'react-bootstrap/Table'

const numberWithCommas = n => n.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',')

const PPG = props =>
  <>
  <h2>Scoring Leaders</h2>
  <Table className='table-striped'>
    <thead className='thead-dark'><tr><th>Name</th><th>Points</th><th>Year</th></tr></thead>
    <tbody>{
      props.ppgData.map((el,index)=>
        <tr key={index}>
          <td><img src={'https://' + el['url']} alt='playerImg'/><br/>{el['name']}</td>
          <td>{numberWithCommas(el['points'])}</td>
          <td>{el['season']}</td>
        </tr>)
    }</tbody>
  </Table>
  </>

export default PPG