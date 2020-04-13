import React from 'react'
import Table from 'react-bootstrap/Table'

const Teams = (props) => {  
  
  const renderTable = () => {
    let rows = []
    props.teams.map((name, index) => rows.push(<tr key={index}><td>{name}</td></tr>))
    return <>{rows}</>
  }

  return (
    <Table className='table-striped'>
      <thead className='thead-dark'><tr><th>Teams</th></tr></thead>
      <tbody>{renderTable()}</tbody>
    </Table>
  )
}

export default Teams