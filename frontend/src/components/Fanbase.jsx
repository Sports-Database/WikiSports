import React from 'react'
import Table from 'react-bootstrap/Table'

const Fanbase = props => { 

  const numberWithCommas = (num) => num.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',')

  return (
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
  )
}

export default Fanbase