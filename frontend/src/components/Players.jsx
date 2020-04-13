import React from 'react'
import Table from 'react-bootstrap/Table'

const Players = (props) => {  
  
  const renderTable = () => {
    let rows = []
    props.players.map((name, index) => rows.push(<tr key={index}><td>{name}</td></tr>))
    return <>{rows}</>
  }
  
  return(
    <Table id='stats' className='table-striped'>
      <thead className='thead-dark'><tr><th>Players</th></tr></thead>
      <tbody>{renderTable()}</tbody>
    </Table>
  )
}

export default Players