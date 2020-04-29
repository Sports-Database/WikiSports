import React from 'react'
import Table from 'react-bootstrap/Table'

const numberWithCommas = n => n.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',')

const Fanbase = props =>
  <>
  <h2>Team Fanbase</h2>
  <Table className='table-striped'>
    <thead className='thead-dark'><tr><th>Name</th><th>Fanbase</th></tr></thead>
    <tbody>{props.fanData.map((el,index)=>
      <tr key={index}>
        <td>{el['name']}<br/><img style={{width:'100px'}} src={'https://' + el['url']} alt='url'/></td>
        <td>{numberWithCommas(el['fanbase'])}</td>
      </tr>)
    }</tbody>
  </Table>
  </>

export default Fanbase