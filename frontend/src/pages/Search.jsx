import React from 'react'
import { Container, Button, Form } from 'react-bootstrap/'
import axios from 'axios'

import Acronyms  from '../components/Acronyms'
import Champions from '../components/Champions'
import Help      from '../components/Help'
import League    from '../components/League'
import Player    from '../components/Player'
import Players   from '../components/Players'
import Team      from '../components/Team'
import Teams     from '../components/Teams'
import Unknown   from '../components/Unknown'

export class Search extends React.Component {  
  state = {
    searchQuery : '',
    playerNames : [],
    teamNames   : [],
    queryType   : 'blank',
    ready       : false,
    playerData : {
      name     : '',
      team     : '',
      points   : 0,
      rebounds : 0,
      assists  : 0,
      steals   : 0,
      earnings : 0,
      stats    : [
        { season: 0, points: 0, rebounds: 0, assists: 0, steals: 0 },
        { season: 0, points: 0, rebounds: 0, assists: 0, steals: 0 },
        { season: 0, points: 0, rebounds: 0, assists: 0, steals: 0 }
      ]
    },
    teamData : {
      teamName      : '', 
      roster        : [],
      championships : []
    },
    championData: {
      teamName    : 'Some Team Name',
      playerNames : []
    },
    acronyms: []
  }
  
  componentDidMount() {this.initTeamsAndPlayers()}

  url = 'http://localhost:8080'

  initTeamsAndPlayers() {
    if(!this.state.playerNames.length) {
      let pNames = []
      axios.get(this.url + '/players')
      .then(res => JSON.parse(JSON.stringify(res.data)).forEach(player => pNames.push(player.name)))
      this.setState({playerNames: pNames})
    }
    if(!this.state.teamNames.length) {
      let tNames = []
      axios.get(this.url + '/teams')
      .then(res => JSON.parse(JSON.stringify(res.data)).forEach(team => tNames.push(team.name)))
      this.setState({teamNames: tNames})
    }
  }// init teams and players

  capitalize = (str) => str.charAt(0).toUpperCase() + str.slice(1)

  async initQueryType() {
    let basicType = {
      'teams'    : 'teams'    , 'team'    : 'teams'    ,   
      'players'  : 'players'  , 'player'  : 'players'  ,
      'league'   : 'league'   , 'nba'     : 'league'   ,
      'acronyms' : 'acronyms' , 'acronym' : 'acronyms' , 'acro' : 'acronyms'  , 'stats' : 'acronyms' , 'statistics' : 'acronyms' , 'statistic' : 'acronyms' , 
      'champions': 'champions', 'champion': 'champions', 'champs': 'champions', 'champ': 'champions',
      'help'     : 'help'     , 'h': 'help'
    }
    let query           = this.state.searchQuery.toLowerCase()
    let isNotPlayerName = false
    let isNotTeamName   = false
    if(!this.state.searchQuery.length)                  this.setState({queryType: 'blank'})
    else if(Object.keys(basicType).indexOf(query)!==-1) this.setState({queryType: basicType[query]})
    else { 
      let formatted = []
      query.toLowerCase().split(' ').forEach(word => formatted.push(this.capitalize(word)))
      formatted = formatted.join(' ')
      if(this.state.playerNames.indexOf(formatted)!==-1) this.setState({queryType: '<playerName>'})
      else isNotPlayerName = true
      if(this.state.teamNames.indexOf(formatted)!==-1)   this.setState({queryType: '<teamName>'  })
      else isNotTeamName = true
    }
    if(isNotPlayerName && isNotTeamName) this.setState({queryType: 'unknown'  })
  }

  async prepData() {
    await this.initQueryType()
    await this.updateRelevantData()
    this.setState({ready:true})
  }

  async updatePlayerData() {
    let updated = this.state.playerData
    
    // player name
    await axios.get(this.url + '/players/' + this.state.searchQuery)
    .then(res => {
      let receivedData = JSON.parse(JSON.stringify(res.data))[0]
      updated.name = receivedData.name
    })

    // team name
    await axios.get(this.url + '/players/team/' + this.state.searchQuery)
    .then(res => {
      let receivedData = JSON.parse(JSON.stringify(res.data))[0]
      updated.team = receivedData.name
    })

    // career stats
    await axios.get(this.url + '/stats/career/' + this.state.searchQuery)
    .then(res => {
      let receivedData = JSON.parse(JSON.stringify(res.data))[0]
      updated.points   = receivedData.Points
      updated.rebounds = receivedData.Rebounds
      updated.assists  = receivedData.Assists
      updated.steals   = receivedData.Steals
    })
    
    // earnings per yr
    await axios.get(this.url + '/stats/earnings/' + this.state.searchQuery)
    .then(res => {
      let receivedData = JSON.parse(JSON.stringify(res.data))[0]
      updated.earnings = receivedData.salaryPerYear
    })

    // seasonal stats
    await axios.get(this.url + '/stats/seasonal/' + this.state.searchQuery)
    .then(res => {
      let receivedData = JSON.parse(JSON.stringify(res.data))
      let i = 0
      receivedData.forEach(seasonStats => {
        for(let key in seasonStats) updated.stats[i][key.toLowerCase()] = seasonStats[key]
        ++i
      })// for each
    })

    this.setState({playerData:updated})
  }

  async updateTeamData() {
    let updated = this.state.teamData
    let titles = []

    // roster
    await axios.get(this.url + '/teams/players/' + this.state.searchQuery)
    .then(res => {
      let players = []
      let receivedData = JSON.parse(JSON.stringify(res.data))
      receivedData.forEach(data => players.push(data.name))
      updated.roster = players
    })

    // titles
    await axios.get(this.url + '/teams/titles/' + this.state.searchQuery)
    .then(res => {
      let receivedData = JSON.parse(JSON.stringify(res.data))
      receivedData.forEach(data => {if(data.wonTitle) titles.push(data.season)})
      updated.championships = titles
    })
    .then(()=>{
      let teamName = []
      let words = this.state.searchQuery.split(' ')
      words.forEach(word => teamName.push(this.capitalize(word)))
      updated.teamName = teamName.join(' ')
    })

    this.setState({teamData:updated})
  }

  async updateChampions() {
    if(!this.state.championData.playerNames.length) {
      let updated = this.state.championData
      let players = []
      await axios.get(this.url + '/teams/championRoster')
      .then(res => {
        let receivedData = JSON.parse(JSON.stringify(res.data))
        receivedData.forEach(data => players.push(data.playerName))
        updated.teamName = receivedData[0].teamName})
      .then(updated.playerNames = players)
      this.setState({championData:updated})
    }
  }

  updateAcronyms() {
    if(!this.state.acronyms.length) {
      axios.get(this.url + '/acronyms')
      .then(res => this.setState({acronyms: JSON.parse(JSON.stringify(res.data))}))
    }
  }

  updateRelevantData = () => {
    switch(this.state.queryType) {
      case 'champions':
        this.updateChampions()
        break
      case '<playerName>':
        this.updatePlayerData()
        break
      case '<teamName>':
        this.updateTeamData()
        break
      case 'acronyms':
        this.updateAcronyms()
        break
      default:
    }
  }

  render() {
    return(
      <Container>
        <br/>
        <h1 style={{textAlign:'center'}}>Fantasy NBA</h1>
        <br/>
        <Form.Control
          type = 'text'
          placeholder = 'Enter Player or Team Name'
          style = {{width: '80%', float: 'left'}}
          onClick = {() => this.setState({queryType:'blank'})}
          onChange = {e => this.setState({searchQuery:e.target.value})}
          onKeyPress={(target)=>{if(target.charCode===13) this.prepData()}}
        />
        <Button onClick = {() => this.prepData()}>Find</Button>
        <br/><br/>
        {this.state.ready && this.state.queryType==='teams'        && <Teams     teams        = {this.state.teamNames}    style = {{display:'none'}}/>}
        {this.state.ready && this.state.queryType==='players'      && <Players   players      = {this.state.playerNames}  style = {{display:'none'}}/>}
        {this.state.ready && this.state.queryType==='league'       && <League    leagueData   = {this.state.leagueData}   style = {{display:'none'}}/>}
        {this.state.ready && this.state.queryType==='acronyms'     && <Acronyms  acronyms     = {this.state.acronyms}     style = {{display:'none'}}/>}
        {this.state.ready && this.state.queryType==='champions'    && <Champions championData = {this.state.championData} style = {{display:'none'}}/>}
        {this.state.ready && this.state.queryType==='<playerName>' && <Player    playerData   = {this.state.playerData}   style = {{display:'none'}}/>}
        {this.state.ready && this.state.queryType==='<teamName>'   && <Team      teamData     = {this.state.teamData}     style = {{display:'none'}}/>}
        {this.state.ready && this.state.queryType==='unknown'      && <Unknown   searchQuery  = {this.state.searchQuery}  style = {{display:'none'}}/>}
        {this.state.ready && this.state.queryType==='help'         && <Help                                               style = {{display:'none'}}/>}
      </Container>
  )}
}

/*

players
  Lebron James
  Joakim Noah
  Mike Conley
  kyle lowry
  kevin durant
  kyrie irving

teams
  dallas mavericks
  utah jazz
  Orlando Magic

acronyms / stats / statistics

champions

======== NEED TO IMPLEMENT BELOW =======

help

league

*/