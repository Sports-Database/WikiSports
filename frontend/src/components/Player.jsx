import React from 'react'
import Table from 'react-bootstrap/Table'

const Player = props => {  

  const statistics = ['Points', 'Rebounds', 'Assists', 'Steals', 'Earnings']

  const renderCareerTableHeader = () => statistics.map((key, index) => {
    if(key==='Earnings') return <th key={index}>ANNUAL EARNINGS</th>
    else return <th key={index}>{key.toUpperCase()}</th>
  })

  const renderCareerTable = () =>
    statistics.map((stat, index) => {
        if(stat==='Earnings') return <td key={index}>{'$' + numberWithCommas(props.playerData[stat.toLowerCase()])}</td>
        else return <td key={index}>{numberWithCommas(props.playerData[stat.toLowerCase()])}</td>
    })

  const numberWithCommas = (num) => num.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',')
  
  return (
    <>
    <h3>{props.playerData.name}</h3>
    <img src={'https://' + props.playerData.url} height='250' alt='Player'/>
    <h5>Current Team: {props.playerData.team}</h5><br/>
    <h4>Career Stats</h4>
    <Table id='career' className='table-bordered'>
      <thead className='thead-dark'><tr>{renderCareerTableHeader()}</tr></thead>
      <tbody><tr>{renderCareerTable()}</tr></tbody>
    </Table>
    </>
  )
}

export default Player

/*
      <h5>Points:           {numberWithCommas(props.playerData.points)  }</h5>
      <h5>Rebounds:         {numberWithCommas(props.playerData.rebounds)}</h5>
      <h5>Assists:          {numberWithCommas(props.playerData.assists) }</h5>
      <h5>Steals:           {numberWithCommas(props.playerData.steals)  }</h5>
      <h5>Annual Earnings: ${numberWithCommas(props.playerData.earnings)}</h5>
*/