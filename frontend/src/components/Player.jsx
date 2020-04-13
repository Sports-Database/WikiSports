import React from 'react'
import Table from 'react-bootstrap/Table'

const Player = (props) => {  

  const stats = ['Points', 'Rebounds', 'Assists', 'Steals', 'Earnings']

  const renderCareerTableHeader = () => stats.map((key, index) => {
    if(key==='Earnings') return <th key={index}>ANNUAL EARNINGS</th>
    else return <th key={index}>{key.toUpperCase()}</th>
  })

  const renderCareerTable = () =>
    stats.map((stat, index) => {
      if(stat==='Earnings') return <td key={index}>{'$' + numberWithCommas(props.playerData[stat.toLowerCase()])}</td>
      else return <td key={index}>{numberWithCommas(props.playerData[stat.toLowerCase()])}</td>
    })

  const renderSeasonalTableHeader = () => {
    let header = Object.keys(props.playerData.stats[0])
    return header.map((key, index) => <th key={index}>{key.toUpperCase()}</th>)
  }

  const renderSeasonalTable = () => {
    return props.playerData.stats.map((key, index) => {
       const { season, points, rebounds, assists, steals } = key 
       return (
          <tr key={index}>
             <td>{season}</td>
             <td>{points}</td>
             <td>{rebounds}</td>
             <td>{assists}</td>
             <td>{steals}</td>
          </tr>
       )
    })
  }

  const numberWithCommas = (num) => num.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',')
  
  return (
    <>
      <h3>{props.playerData.name}</h3>
      <img src='https://placehold.it/150x150' alt='Player'/>
      <h5>Current Team: {props.playerData.team}</h5><br/>
      <h4>Career Stats</h4>
      <Table id='career' className='table-bordered'>
        <thead className='thead-dark'><tr>{renderCareerTableHeader()}</tr></thead>
        <tbody><tr>{renderCareerTable()}</tr></tbody>
      </Table>
      <br/>
      <h4>Seasonal Stats</h4>
      <Table id='stats' className='table-bordered'>
        <thead className='thead-dark'><tr>{renderSeasonalTableHeader()}</tr></thead>
        <tbody>{renderSeasonalTable()}</tbody>
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