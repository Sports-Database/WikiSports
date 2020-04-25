import React from 'react'
import Table from 'react-bootstrap/Table'

const Team = props => {
  const displayChampionships = () => 
    props.teamData.championships.length ? props.teamData.championships[0] : 'None'

  const numberWithCommas = n => n.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',')
  
  // that img link is a celtics img link
  return (props.teamData.fanbase===undefined? <></> :
    <>
      <h3>{props.teamData.teamName}</h3>
      <img src={'https://' + props.teamData.url} height='250' alt='Team'/>
      <h5>Championships: {displayChampionships()}</h5>
      <h5>Fanbase: {numberWithCommas(props.teamData.fanbase)}</h5><br/>
      <h6>Useful Links:</h6>
      <ol>
        <li><a href={'https://' + props.teamData.articles[0]['url']}>{props.teamData.articles[0]['url']}</a></li>
        <li><a href={'https://' + props.teamData.articles[0]['url']}>{props.teamData.articles[1]['url']}</a></li>
      </ol>
      <Table id='stats'>
        <thead className='thead-dark'><tr><th>Team Roster</th></tr></thead>
        <tbody>{props.teamData.roster.map((name, index) => <tr key={index}><td>{name}</td></tr>)}</tbody>
      </Table>
    </>
  )
}

export default Team