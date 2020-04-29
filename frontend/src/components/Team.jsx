import React, { useState, useEffect } from 'react'
import { Table, Container }           from 'react-bootstrap'
import axios                          from 'axios'

const Team = props => {

  const [ teamName, setTeamName ] = useState()
  const [ teamUrl , setTeamUrl  ] = useState()
  const [ fanbase , setFanbase  ] = useState()
  const [ titles  , setTitles   ] = useState()
  const [ articles, setArticles ] = useState()
  const [ roster  , setRoster   ] = useState()

  const APIURL  = 'http://localhost:8080'

  useEffect(() => {
    initTeamData(props.match.params.id)
    return () => resetStates()
  },[props.match.params.id])

  const initTeamData = id => {
    axios
      .get(APIURL + '/teams')
      .then(res => {
        for(let obj of res.data) {
          if(obj.id===parseInt(id)) {
            setTeamName(obj.name)
            setTeamUrl(obj.url)
            setFanbase(obj.fanbase)
            axios
              .get(APIURL + '/teams/titles/' + obj.name)
              .then(res => res.data.forEach(obj => {if(obj.wonTitle) setTitles(obj.season)}))
            axios
              .get(APIURL + '/teams/articles/' + obj.name)
              .then(res => setArticles(res.data))
            axios
              .get(APIURL + '/teams/players/' + obj.name)
              .then(res => setRoster(res.data))
            break
      }}})
  }

  const resetStates = () => {
    setTeamName(undefined)
    setTeamUrl(undefined)
    setFanbase(undefined)
    setTitles(undefined)
    setArticles(undefined)
    setRoster(undefined)
  }

  const displayChampionships = () => titles ? titles : 'None'

  const numberWithCommas = n => n.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',')

  return (
    roster===undefined? <></> :
    <Container>
      <h3>{teamName}</h3>
      <img src={'https://' + teamUrl} height='250' alt='Team'/>
      <h5>Championships: {displayChampionships()}</h5>
      <h5>Fanbase: {numberWithCommas(fanbase)}</h5><br/>
      <h6>Useful Links:</h6>
      <ol>
        <li><a href={'https://' + articles[0]['url']}>{articles[0]['url']}</a></li>
        <li><a href={'https://' + articles[0]['url']}>{articles[1]['url']}</a></li>
      </ol>
      <Table id='stats'>
        <thead className='thead-dark'><tr><th>Team Roster</th></tr></thead>
        <tbody>{roster.map((obj, i) => <tr key={i}><td>{obj.name}</td></tr>)}</tbody>
      </Table>
    </Container>)
}

export default Team