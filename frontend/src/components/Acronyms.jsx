import React from 'react'
import Table from 'react-bootstrap/Table'

const Acronyms = props =>
  <Table id='stats' className='table table-bordered table-striped'>
    <thead className='thead-dark'>
      <tr><th>Statistic</th><th>Acronym</th></tr>
    </thead>
    <tbody>{
      props.acronyms.map((a,i) => <tr key={i}><td>{a.fullName}</td><td>{a.acronym}</td></tr>)
    }</tbody>
  </Table>

export default Acronyms