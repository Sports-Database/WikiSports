import React from 'react'
import Table from 'react-bootstrap/Table'

const Team = (props) => {
  const displayChampionships = () => props.teamData.championships.length ? displayYears() : 'None'
  const displayYears = () => props.teamData.championships[0]
  const renderTable = () => {
    let rows = []
    props.teamData.roster.map((name, index) => rows.push(<tr key={index}><td>{name}</td></tr>))
    return <>{rows}</>
  }

  // that img link is a celtics img link
  return (
    <>
      <h3>{props.teamData.teamName}</h3>
      <img src='https://a.espncdn.com/i/teamlogos/nba/500/bos.png' alt='Player'/>
      <h5>Championships: {displayChampionships()}</h5><br/>
      <Table id='stats'>
        <thead className='thead-dark'><tr><th>Current Roster</th></tr></thead>
        <tbody>{renderTable()}</tbody>
      </Table>
    </>
  )
}

export default Team

// <img src='https://placehold.it/150x150' alt='Player'/>