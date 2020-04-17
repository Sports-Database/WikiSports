import React from 'react'
import Table from 'react-bootstrap/Table'

const Champions = (props) => {  
  const renderTable = () => {
    let rows = []
    props.championData.playerNames.map((name, index) => rows.push(<tr key={index}><td>{name}</td></tr>))
    return <>{rows}</>
  }

  return(
    <>
      <h4>Recent Champions: {props.championData.teamName}</h4>
      <Table id='stats' className='table-bordered table-striped'>
        <thead className='thead-dark'>
          <tr><th>Championship Roster</th></tr>
        </thead>
        <tbody>{renderTable()}</tbody>
      </Table>
    </>
  )
}

export default Champions