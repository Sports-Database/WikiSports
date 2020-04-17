import React from 'react'
import axios from 'axios'
import { Container, Button, Form, Dropdown} from 'react-bootstrap/'

import Acronyms  from '../components/Acronyms'
import Champions from '../components/Champions'
import Help      from '../components/Help'
import League    from '../components/League'
import Player    from '../components/Player'
import Players   from '../components/Players'
import Team      from '../components/Team'
import Teams     from '../components/Teams'
import Unknown   from '../components/Unknown'
import Welcome   from '../components/Welcome'
import MVP       from '../components/MVP'
import PPG       from '../components/PPG'
import Rebounds  from '../components/Rebounds'
import Assists   from '../components/Assists'
import Steals    from '../components/Steals'
import MostChampionships from '../components/MostChampionships'

export class Search extends React.Component {  
  state = {
    searchQuery : '',
    playerNames : [],
    teamNames   : ['Portland Trail Blazers','Los Angeles Laers','Golden State Warriors','Dallas Mavericks','Houston Rockets','Brooklyn Nets','New York Knicks','Utah Jazz','Memphis Grizzlies','Denver Nuggets','Sacramento Kings','New Orleans Pelicans','Los Angeles Clippers','Minnesota Timberwolves','Boston Celtics','Chicago Bulls','Toronto Raptors','Miami Heat','Milwaukee Bucks','Detroit Pistons','Philadelphia 76ers','Atlanta Hawks','Washington Wizards','Charlotte Hornets','Indiana Pacers','Cleveland Cavaliers','Orlando Magic','San Antonio Spurs','Phoenix Suns','Oklahoma City Thunder'],
    queryType   : 'blank',
    ready       : false,
    playerData : {
      name     : '',
      firstName: '',
      lastName : '',
      url      : '',
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
      url           : '',
      roster        : [],
      championships : [],
      articles      : []
    },
    championData: {
      teamName    : 'Some Team Name',
      playerNames : []
    },
    acronyms: [],
    mvp:      [],
    ppg:      [],
    rebounds: [],
    assists:  [],
    steals:   [],
    mostChampionships: [],
    possibleSearches:  [],
    didYouMean: ''
  }
  
  componentDidMount() {this.initPlayers()}

  home   = 'http://localhost:3000'
  apiUrl = 'http://localhost:8080'

  renderTeams = () => {
    let teams = []
    this.state.teamNames.sort().map((tName, index) => teams.push(<Button onClick={()=>this.goToTeam(tName)} className='btn dropdown-item' key={index}>{tName}</Button>))
    return <div className='dropdown-menu' aria-labelledby='navbarDropdownMenuLink'>{teams}</div>
  } // for nav bar

  initPlayers() {
    if(!this.state.playerNames.length) {
      let pNames = []
      axios.get(this.apiUrl + '/players')
      .then(res => JSON.parse(JSON.stringify(res.data)).forEach(player => pNames.push(player.name)))
      this.setState({playerNames: pNames})
    }
  }// init teams and players

  capitalize = (str) => str.charAt(0).toUpperCase() + str.slice(1)

  async initQueryType() {
    let basicType = {
      'teams'    : 'teams'    , 'team'    : 'teams'    ,   
      'players'  : 'players'  , 'player'  : 'players'  ,
      'league'   : 'league'   , 'nba'     : 'league'   ,
      'acronyms' : 'acronyms' , 'acronym' : 'acronyms' , 'acro' : 'acronyms'  , 'stat' : 'acronyms' , 'stats' : 'acronyms' , 'statistics' : 'acronyms' , 'statistic' : 'acronyms' , 
      'champions': 'champions', 'champion': 'champions', 'champs': 'champions', 'champ': 'champions',
      'help'     : 'help'     , 'h'       : 'help'     ,
      'mvp'      : 'mvp'      , 'mvps'    : 'mvp'      , 'most valuable player':'mvp' , 'most valuable players':'mvp',
      'ppg'      : 'ppg'      , 'points'  : 'ppg'      , 'scoring leader' : 'ppg'     , 'points per game': 'ppg', 
      'assists'  : 'assists'  , 'assist'  : 'assists'  , 'assists leader' : 'assists' , 'passing leader' : 'assists',
      'rebounds' : 'rebounds' , 'rebound' : 'rebounds' , 'rebounds leader': 'rebounds', 'boards' : 'rebounds',
      'steals'   : 'steals'   , 'steal'   : 'steals'   , 'steals leader'  : 'steals',
      'most championships' : 'most championships', 'championships': 'most championships', 'most championship' : 'most championships', 'rings' : 'most championships'
    }
    let query           = this.state.searchQuery.toLowerCase()
    let isNotPlayerName = false
    let isNotTeamName   = false
    if(!this.state.searchQuery.length)                  this.setState({queryType: 'blank'})
    else if(Object.keys(basicType).indexOf(query)!==-1) {this.setState({queryType: basicType[query]})}
    else { 
      let formatted = []
      query.toLowerCase().split(' ').forEach(word => formatted.push(this.capitalize(word)))
      formatted = formatted.join(' ')
      if(this.state.playerNames.indexOf(formatted)!==-1) this.setState({queryType: '<playerName>'})
      else isNotPlayerName = true
      if(this.state.teamNames.indexOf(formatted)!==-1)   this.setState({queryType: '<teamName>'  })
      else isNotTeamName = true
    }
    if(isNotPlayerName && isNotTeamName) this.goToUnknown()
  }

  async prepData() {
    await this.initQueryType()
    await this.updateRelevantData()
    this.setState({ready:true})
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
      case 'mvp':
        this.updateMVPs()
        break
      case 'ppg':
        this.updatePPGData()
        break
      case 'steals':
        this.updateStealsData()
        break
      case 'assists':
        this.updateAssistsData()
        break
      case 'rebounds':
        this.updateReboundsData()
        break
      case 'most championships':
        this.updateMostChampionshipsData()
        break
      default:
    }
  }

  async updatePlayerData() {
    let updated = this.state.playerData

    // player name
    await axios.get(this.apiUrl + '/players/' + this.state.searchQuery)
    .then(res => {
      let receivedData = JSON.parse(JSON.stringify(res.data))[0]
      //console.log(receivedData)
      updated.name = receivedData.name
      let nameArr = receivedData.name.split(' ')
      updated.firstName = nameArr[1]
      updated.lastName = nameArr[0]
      updated.url  = receivedData.url
    })

    // team name
    await axios.get(this.apiUrl + '/players/team/' + this.state.searchQuery)
    .then(res => {
      let receivedData = JSON.parse(JSON.stringify(res.data))[0]
      updated.team = receivedData.name
    })

    // career stats
    await axios.get(this.apiUrl + '/stats/career/' + this.state.searchQuery)
    .then(res => {
      let receivedData = JSON.parse(JSON.stringify(res.data))[0]
      updated.points   = receivedData.Points
      updated.rebounds = receivedData.Rebounds
      updated.assists  = receivedData.Assists
      updated.steals   = receivedData.Steals
    })
    
    // earnings per yr
    await axios.get(this.apiUrl + '/stats/earnings/' + this.state.searchQuery)
    .then(res => {
      let receivedData = JSON.parse(JSON.stringify(res.data))[0]
      updated.earnings = receivedData.salaryPerYear
    })

    // seasonal stats
    await axios.get(this.apiUrl + '/stats/seasonal/' + this.state.searchQuery)
    .then(res => {
      let receivedData = JSON.parse(JSON.stringify(res.data))
      let i = 0
      receivedData.forEach(seasonStats => {
        for(let key in seasonStats) updated.stats[i][key.toLowerCase()] = seasonStats[key]
        ++i
      })// for each
    })
    .then(this.setState({playerData:updated}))
  }

  async updateTeamData() {
    let updated = this.state.teamData
    let titles = []

    // roster
    await axios.get(this.apiUrl + '/teams/url/' + this.state.searchQuery)
    .then(res => {
      let receivedData = JSON.parse(JSON.stringify(res.data))
      updated.url = receivedData[0].url
    })

    // roster
    await axios.get(this.apiUrl + '/teams/players/' + this.state.searchQuery)
    .then(res => {
      let players = []
      let receivedData = JSON.parse(JSON.stringify(res.data))
      receivedData.forEach(data => players.push(data.name))
      updated.roster = players
    })

    // titles
    await axios.get(this.apiUrl + '/teams/titles/' + this.state.searchQuery)
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

    await axios.get(this.apiUrl + '/teams/articles/' + this.state.searchQuery)
    .then(res => updated.articles = JSON.parse(JSON.stringify(res.data)))

    this.setState({teamData:updated})
  }

  async updateChampions() {
    if(!this.state.championData.playerNames.length) {
      let updated = this.state.championData
      let players = []
      await axios.get(this.apiUrl + '/teams/championRoster')
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
      axios.get(this.apiUrl + '/acronyms')
      .then(res => this.setState({acronyms: JSON.parse(JSON.stringify(res.data))}))
    }
  }

  updateMVPs() {
    axios.get(this.apiUrl + '/league/mvp')
    .then(res => this.setState({mvp:JSON.parse(JSON.stringify(res.data))}))
  }

  updatePPGData() {
    axios.get(this.apiUrl + '/league/points')
    .then(res => this.setState({ppg:JSON.parse(JSON.stringify(res.data))}))
  }

  updateReboundsData() {
    axios.get(this.apiUrl + '/league/rebounds')
    .then(res => this.setState({rebounds:JSON.parse(JSON.stringify(res.data))}))
  }

  updateAssistsData() {
    axios.get(this.apiUrl + '/league/assists')
    .then(res => this.setState({assists:JSON.parse(JSON.stringify(res.data))}))
  }

  updateStealsData() {
    axios.get(this.apiUrl + '/league/steals')
    .then(res => this.setState({steals:JSON.parse(JSON.stringify(res.data))}))
  }

  updateMostChampionshipsData() {
    axios.get(this.apiUrl + '/league/mostChampionships')
    .then(res => this.setState({mostChampionships:JSON.parse(JSON.stringify(res.data))}))
  }

  async goToTeam(tName) {
    await this.setState({searchQuery: tName})
    await this.updateTeamData()
    await this.setState({queryType:'<teamName>'})
    this.setState({ready:true})
  }

  async goToMVP() {
    await this.setState({searchQuery: 'mvp'})
    await this.updateMVPs()
    await this.setState({queryType:'mvp'})
    this.setState({ready:true})
  }

  async goToPPG() {
    await this.setState({searchQuery: 'ppg'})
    await this.updatePPGData()
    await this.setState({queryType:'ppg'})
    this.setState({ready:true})
  }

  async goToRebounds() {
    await this.setState({searchQuery: 'rebounds'})
    await this.updateReboundsData()
    await this.setState({queryType: 'rebounds'})
    this.setState({ready:true})
  }

  async goToAssists() {
    await this.setState({searchQuery: 'assists'})
    await this.updateAssistsData()
    await this.setState({queryType: 'assists'})
    this.setState({ready:true})
  }

  async goToSteals() {
    await this.setState({searchQuery: 'steals'})
    await this.updateStealsData()
    await this.setState({queryType: 'steals'})
    this.setState({ready:true})
  }

  async goToMostChampionships() {
    await this.setState({searchQuery: 'most championships'})
    await this.updateMostChampionshipsData()
    await this.setState({queryType: 'most championships'})
    this.setState({ready:true})
  }

  goToHelp() {
    this.setState({ready:true})
    this.setState({queryType:'help'})
  }

  async goToUnknown() {
    //let hash = (s) => s.toLowerCase().split('').reduce(function(a,b){a=((a<<5)-a)+b.charCodeAt(0);return a&a},0)
    //let hash = (s) => s.toLowerCase().split('').reduce((sum, curr) => sum + curr.charCodeAt(0),0)
    let hash = (s) => s.toLowerCase().split('').reduce(function(a,b){a=((a<<1)-a)+b.charCodeAt(0);return a},0)
    
    let possibles = []
    let keywords  = ['team', 'teams', 'player', 'players', 'league', 'nba', 'acronyms', 'acronym', 'stat', 'stats', 'statistics', 'champion', 'champions', 'help', 'mvp', 'mvps']
    
    let queryHash = await hash(this.state.searchQuery)    // push query
    let queryObj = {}
    queryObj[queryHash] = this.state.searchQuery
    possibles.push(queryObj)

    await this.state.playerNames.forEach(playerName => {  // push player names
      let str = playerName.toLowerCase()
      let obj = {}
      obj[hash(str)] = str
      possibles.push(obj)
    })
    await this.state.teamNames.forEach(teamName => {      // push team names
      let str = teamName.toLowerCase()
      let obj = {}
      obj[hash(str)] = str
      possibles.push(obj)
    })
    await keywords.forEach(keyword => {                   // push keywords
      let obj = {}
      obj[hash(keyword)] = keyword
      possibles.push(obj)
    })
    await possibles.sort((a,b)=>Object.keys(a)[0] - Object.keys(b)[0]) // sort objs by hash val
    
    let queryIndex = await possibles.indexOf(queryObj);
    let prevDiff   = await Math.abs(Object.keys(possibles[queryIndex-1])[0] - queryHash)
    let nextDiff   = await Math.abs(Object.keys(possibles[queryIndex+1])[0] - queryHash)
    
    if(prevDiff < nextDiff) this.setState({didYouMean: Object.values(possibles[queryIndex-1])[0]})
    else this.setState({didYouMean: Object.values(possibles[queryIndex+1])[0]})
    
    this.setState({queryType:'unknown'})
  }

  render() {
    return(
    <>
      <nav className='navbar navbar-expand-lg navbar-dark bg-dark'>
        <a className='navbar-brand' href={this.home}>WikiSports</a>
        <button className='navbar-toggler' type='button' data-toggle='collapse' data-target='#navbarNavDropdown' aria-controls='navbarNavDropdown' aria-expanded='false' aria-label='Toggle navigation'>
          <span className='navbar-toggler-icon'></span>
        </button>
        <div className='collapse navbar-collapse' id='navbarNavDropdown'>
          <ul className='navbar-nav'>
            <li className='nav-item dropdown'>
              <Dropdown className='nav-link dropdown-toggle' id='navbarDropdownMenuLink' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>
                  Teams
              </Dropdown>
              {this.renderTeams()}
            </li>
            <li className='nav-item dropdown'>
              <Dropdown className='nav-link dropdown-toggle' id='navbarDropdownMenuLink' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>
                  League Leaders
              </Dropdown>
              <div className='dropdown-menu' aria-labelledby='navbarDropdownMenuLink'>
                <Button className='dropdown-item' onClick={()=>this.goToMVP()}>MVP</Button>
                <Button className='dropdown-item' onClick={()=>this.goToPPG()}>Points</Button>
                <Button className='dropdown-item' onClick={()=>this.goToRebounds()}>Rebounds</Button>
                <Button className='dropdown-item' onClick={()=>this.goToAssists()}>Assists</Button>
                <Button className='dropdown-item' onClick={()=>this.goToSteals()}>Steals</Button>
                <Button className='dropdown-item' onClick={()=>this.goToMostChampionships()}>Championships</Button>
              </div>
            </li>
          </ul>
              <Form.Control
                type = 'text'
                placeholder = 'Enter Player Name'
                style = {{width: '80%', float: 'left', marginLeft:'.5em'}}
                onClick = {() => this.setState({queryType:'blank'})}
                onChange = {e => this.setState({searchQuery:e.target.value})}
                onKeyPress={(target)=>{if(target.charCode===13) this.prepData()}}
              />
              <Button onClick={() => this.prepData()} variant='success' style={{marginRight:'1em'}}>Find</Button>
        </div>
      </nav>
      <br/>
      <Container>
        {                    this.state.queryType==='blank'        && <Welcome   getHelp={()=>this.goToHelp()}/>}
        {this.state.ready && this.state.queryType==='teams'        && <Teams     teams        = {this.state.teamNames}    style={{display:'none'}}/>}
        {this.state.ready && this.state.queryType==='players'      && <Players   players      = {this.state.playerNames}  style={{display:'none'}}/>}
        {this.state.ready && this.state.queryType==='league'       && <League    leagueData   = {this.state.leagueData}   style={{display:'none'}}/>}
        {this.state.ready && this.state.queryType==='acronyms'     && <Acronyms  acronyms     = {this.state.acronyms}     style={{display:'none'}}/>}
        {this.state.ready && this.state.queryType==='champions'    && <Champions championData = {this.state.championData} style={{display:'none'}}/>}
        {this.state.ready && this.state.queryType==='<playerName>' && <Player    playerData   = {this.state.playerData}   style={{display:'none'}}/>}
        {this.state.ready && this.state.queryType==='<teamName>'   && <Team      teamData     = {this.state.teamData}     style={{display:'none'}}/>}
        {this.state.ready && this.state.queryType==='mvp'          && <MVP       mvpData      = {this.state.mvp}          style={{display:'none'}}/>}
        {this.state.ready && this.state.queryType==='ppg'          && <PPG       ppgData      = {this.state.ppg}          style={{display:'none'}}/>}
        {this.state.ready && this.state.queryType==='rebounds'     && <Rebounds  reboundsData = {this.state.rebounds}     style={{display:'none'}}/>}
        {this.state.ready && this.state.queryType==='assists'      && <Assists   assistsData  = {this.state.assists}      style={{display:'none'}}/>}
        {this.state.ready && this.state.queryType==='steals'       && <Steals    stealsData   = {this.state.steals}       style={{display:'none'}}/>}
        {this.state.ready && this.state.queryType==='most championships' && <MostChampionships mostChampionshipsData = {this.state.mostChampionships} style={{display:'none'}}/>}
        {this.state.ready && this.state.queryType==='unknown'      && <Unknown   parentState  = {this.state}              style={{display:'none'}}/>}
        {this.state.ready && this.state.queryType==='help'         && <Help                                               style={{display:'none'}}/>}
      </Container>
    </>
  )}
}
