import React from 'react'
import Table from 'react-bootstrap/Table'

const Acronyms = props => {  

  const renderTable = () => {
    return props.acronyms.map((key, index) => {
       const { fullName, acronym } = key 
       return (
          <tr key={index}>
             <td>{fullName}</td>
             <td>{acronym}</td>
          </tr>
       )
    })
  }

  return(
    <Table id='stats' className='table table-bordered table-striped'>
      <thead className='thead-dark'>
        <tr>
          <th>Statistic</th>
          <th>Acronym</th>
        </tr>
      </thead>
      <tbody>{renderTable()}</tbody>
    </Table>
  )
}

export default Acronyms