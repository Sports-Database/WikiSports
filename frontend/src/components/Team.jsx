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
      <img src={'https://' + props.teamData.url} height='250' alt='Team'/>
      <h5>Championships: {displayChampionships()}</h5><br/>
      <h6>Useful Links:</h6>
      <ol>
        <li><a href={'https://' + props.teamData.articles[0]['url']}>{props.teamData.articles[0]['url']}</a></li>
        <li><a href={'https://' + props.teamData.articles[0]['url']}>{props.teamData.articles[1]['url']}</a></li>
      </ol>
      <Table id='stats'>
        <thead className='thead-dark'><tr><th>Current Roster</th></tr></thead>
        <tbody>{renderTable()}</tbody>
      </Table>
    </>
  )
}

export default Team

// <img src='https://placehold.it/150x150' alt='Player'/>