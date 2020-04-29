import React, { useState, useEffect } from 'react'
import { Table, Container }           from 'react-bootstrap'
import axios                          from 'axios'
import {APIURL} from "./URL.jsx"
const Player = props => {  
  const [ name, setName ] = useState()
  const [ url , setUrl  ] = useState()
  const [ team, setTeam ] = useState()
  const [ points, setPoints ] = useState()
  const [ rebounds, setRebounds ] = useState()
  const [ assists, setAssists ] = useState()
  const [ steals, setSteals ] = useState()
  const [ earnings, setEarnings ] = useState()
  const [ stats, setStats ] = useState()


  useEffect(() => {
    initData(props.match.params.id)
    return () => resetStates()
  },[props.match.params.id])

  const initData = id => {
    axios
      .get(APIURL + '/players/id/' + id)
      .then(res => {
        let pName = res.data[0].name
        setName(pName)
        setUrl(res.data[0].url)
        axios
          .get(APIURL + '/players/team/' + pName)
          .then(res => setTeam(res.data[0].name))
        axios
          .get(APIURL + '/stats/career/' + pName)
          .then(res => {
            setPoints(res.data[0].Points)
            setRebounds(res.data[0].Rebounds)
            setAssists(res.data[0].Assists)
            setSteals(res.data[0].Steals)
          })
        axios
          .get(APIURL + '/stats/earnings/' + pName)
          .then(res => setEarnings(res.data[0].salaryPerYear))
        axios
          .get(APIURL + '/stats/seasonal/' + pName)
          .then(res => setStats(res.data))
      })
  }  

  const resetStates = () => {
    setName(undefined)
    setUrl(undefined)
    setTeam(undefined)
    setPoints(undefined)
    setRebounds(undefined)
    setAssists(undefined)
    setSteals(undefined)
    setEarnings(undefined)
    setStats(undefined)
  }

  const statistics = ['Points', 'Rebounds', 'Assists', 'Steals', 'Earnings']

  const renderCareerTableHeader = () => statistics.map((key, index) => {
    if(key==='Earnings') return <th key={index}>ANNUAL EARNINGS</th>
    else return <th key={index}>{key.toUpperCase()}</th>
  })

  const numberWithCommas = num =>
      num.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',')

  return (
    stats===undefined? <></> :
    <Container>
      <h3>{name}</h3>
      <img src={'https://' + url} height='250' alt='Player'/>
      <h5 style={{marginTop:'.5em'}}>Current Team: {team}</h5><br/>
      <h4>Career Stats</h4>
      <Table id='career' className='table-bordered'>
        <thead className='thead-dark'><tr>{renderCareerTableHeader()}</tr></thead>
        <tbody>
          <tr>
            <td>{numberWithCommas(points)}</td>
            <td>{numberWithCommas(rebounds)}</td>
            <td>{numberWithCommas(assists)}</td>
            <td>{numberWithCommas(steals)}</td>
            <td>{numberWithCommas(earnings)}</td>
          </tr>
        </tbody>
      </Table>
      <h4>Seasonal Stats</h4>
      <Table id='stats' className='table-bordered'>
        <thead className='thead-dark'>
          <tr>
            <th>SEASON</th>
            <th>POINTS</th>
            <th>REBOUNDS</th>
            <th>ASSISTS</th>
            <th>STEALS</th>
          </tr>
        </thead>
        <tbody>{stats.map((stat, i)=>
          <tr key={i}>
            <td>{stat['season']}</td>
            <td>{stat['Points']}</td>
            <td>{stat['Rebounds']}</td>
            <td>{stat['Assists']}</td>
            <td>{stat['Steals']}</td>
          </tr>
        )}</tbody>
      </Table>
    </Container>
  )
}

export default Player