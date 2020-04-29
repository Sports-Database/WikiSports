import React, { useState, useEffect } from 'react'
import { Table, Container } from 'react-bootstrap'
import axios from 'axios'
import {APIURL} from "./URL.jsx"

const numberWithCommas = n => n.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',')

const Fanbase = () => {

  const [ fanData, setFanData ] = useState()


  const updateFanbaseData = () => {
    axios
      .get(APIURL + '/league/fanbase')
      .then(res => setFanData(res.data))
  }

  useEffect(()=>updateFanbaseData(),[])

  return (
    fanData===undefined? <></> :
    <Container>
      <h2>Team Fanbase</h2>
      <Table className='table-striped'>
        <thead className='thead-dark'><tr><th>Name</th><th>Fanbase</th></tr></thead>
        <tbody>{fanData.map((el,index)=>
          <tr key={index}>
            <td>{el['name']}<br/><img style={{width:'100px'}} src={'https://' + el['url']} alt='url'/></td>
            <td>{numberWithCommas(el['fanbase'])}</td>
          </tr>)
        }</tbody>
      </Table>
    </Container>
)}

export default Fanbase