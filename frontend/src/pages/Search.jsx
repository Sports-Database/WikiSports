import React from 'react'
import axios from 'axios'
import { Container, Button, Form, Dropdown } from 'react-bootstrap/'

import Logo      from '../assets/logo.png'
import Acronyms  from '../components/Acronyms'
import Champions from '../components/Champions'
import Help      from '../components/Help'
import Player    from '../components/Player'
import Players   from '../components/Players'
import Team      from '../components/Team'
import Teams     from '../components/Teams'
import Unknown   from '../components/Unknown'
import Welcome   from '../components/Welcome'
import MVP       from '../components/MVP'
import Fanbase   from '../components/Fanbase'
import PPG       from '../components/PPG'
import Rebounds  from '../components/Rebounds'
import Assists   from '../components/Assists'
import Steals    from '../components/Steals'
import Season   from '../components/Season'
import MostChampionships from '../components/MostChampionships'

const HOMEURL = 'http://localhost:3000'
const APIURL  = 'http://localhost:8080'

export class Search extends React.Component {  
  state = {
    searchQuery : '',
    playerNames : [],
    teamNames   : ['Portland Trail Blazers','Los Angeles Lakers','Golden State Warriors','Dallas Mavericks','Houston Rockets','Brooklyn Nets','New York Knicks','Utah Jazz','Memphis Grizzlies','Denver Nuggets','Sacramento Kings','New Orleans Pelicans','Los Angeles Clippers','Minnesota Timberwolves','Boston Celtics','Chicago Bulls','Toronto Raptors','Miami Heat','Milwaukee Bucks','Detroit Pistons','Philadelphia 76ers','Atlanta Hawks','Washington Wizards','Charlotte Hornets','Indiana Pacers','Cleveland Cavaliers','Orlando Magic','San Antonio Spurs','Phoenix Suns','Oklahoma City Thunder'],
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
    },
    stats    : [],
    teamData : {
      teamName      : '', 
      url           : '',
      roster        : [],
      championships : [],
      articles      : []
    },
    championData: {
      teamName    : '',
      playerNames : []
    },
    acronyms: [],
    mvp:      [],
    fanbase:  [],
    ppg:      [],
    rebounds: [],
    assists:  [],
    steals:   [],
    mostChampionships: [],
    possibleSearches:  [],
    largest: '',
    smallest: '',
    didYouMean: ''
  }
  
  componentDidMount() {
    if(!this.state.playerNames.length) {  // get list of players
      let pNames = []
      axios.get(APIURL + '/players')
      .then(res => res.data.forEach(player => pNames.push(player.name)))
      this.setState({playerNames: pNames})
    }
  }

  capitalize = str => str.charAt(0).toUpperCase() + str.slice(1)

  async initQueryType() {
    let basicType = {
      'teams'    : 'teams'    , 'team'    : 'teams'    ,   
      'players'  : 'players'  , 'player'  : 'players'  ,
      'acronyms' : 'acronyms' , 'acronym' : 'acronyms' , 'acro'  : 'acronyms'  , 'stat' : 'acronyms' , 'stats' : 'acronyms' , 'statistics' : 'acronyms' , 'statistic' : 'acronyms' , 
      'champions': 'champions', 'champion': 'champions', 'champs': 'champions', 'champ': 'champions',
      'help'     : 'help'     , 'h'       : 'help'     , 'etc'   : 'help',
      'fanbase'  : 'fanbase'  , 'fan'     : 'fanbase'  , 'fans'  : 'fanbase', 'popularity' : 'fanbase',
      'mvp'      : 'mvp'      , 'mvps'    : 'mvp'      , 'most valuable player':'mvp' , 'most valuable players':'mvp',
      'ppg'      : 'ppg'      , 'points'  : 'ppg'      , 'scoring leader' : 'ppg'     , 'scoring leaders' : 'ppg', 'points per game': 'ppg', 
      'assists'  : 'assists'  , 'assist'  : 'assists'  , 'assists leader' : 'assists' , 'passing leader' : 'assists', 'assists leaders' : 'assists',
      'rebounds' : 'rebounds' , 'rebound' : 'rebounds' , 'rebounds leader': 'rebounds', 'boards' : 'rebounds', 'rebounds leaders': 'rebounds',
      'steals'   : 'steals'   , 'steal'   : 'steals'   , 'steals leader'  : 'steals'  , 'steals leaders'  : 'steals',
      'most championships' : 'most championships', 'championships': 'most championships', 'most championship' : 'most championships', 'rings' : 'most championships'
    }
    let query                = this.state.searchQuery.toLowerCase()
    let isNotPlayerName      = false
    let isNotTeamName        = false
    let lowerCasePlayerNames = this.state.playerNames.map(name=>name.toLowerCase())
    let lowerCaseTeamNames   = this.state.teamNames.map(name=>name.toLowerCase())
    
    // query is blank
    if(!this.state.searchQuery.length) this.setState({queryType: 'blank'})
    
    // query is basic type
    else if(Object.keys(basicType).indexOf(query)!==-1) // if query is a key in basic type
      this.setState({queryType: basicType[query]})
    
    // query is either player name or team name
    else { 
      lowerCasePlayerNames.indexOf(query)!==-1?
        this.setState({queryType:'<playerName>'}) : isNotPlayerName = true
      lowerCaseTeamNames.indexOf(query)!==-1?
        this.setState({queryType:'<teamName>'}) : isNotTeamName = true      
    }

    // query is unknown
    if(isNotPlayerName && isNotTeamName) this.goToUnknown()
  }

  async prepData() {
    await this.initQueryType()
    await this.updateRelevantData()
    this.setState({ready:true})
  }

  updateRelevantData = () => {
    switch(this.state.queryType) {
      case 'champions':     this.updateChampions()
                            break
      case '<playerName>':  this.updatePlayerData()
                            break
      case '<teamName>':    this.updateTeamData()
                            break
      case 'acronyms':      this.updateAcronyms()
                            break
      case 'mvp':           this.updateMVPs()
                            break
      case 'fanbase':       this.updateFanbaseData()
                            break
      case 'ppg':           this.updatePPGData()
                            break
      case 'steals':        this.updateStealsData()
                            break
      case 'assists':       this.updateAssistsData()
                            break
      case 'rebounds':      this.updateReboundsData()
                            break
      case 'most championships': this.updateMostChampionshipsData()
      default:
    }
  }

  async updatePlayerData() {
    // seasonal stats
    await axios.get(APIURL + '/stats/seasonal/' + this.state.searchQuery)
    .then(res => this.setState({stats:res.data}))

    let updated = this.state.playerData

    // player name
    await axios.get(APIURL + '/players/' + this.state.searchQuery)
    .then(res => {
      let receivedData  = res.data[0]
      updated.name      = receivedData.name
      let nameArr       = receivedData.name.split(' ')
      updated.firstName = nameArr[1]
      updated.lastName  = nameArr[0]
      updated.url       = receivedData.url
    })

    // team name
    await axios.get(APIURL + '/players/team/' + this.state.searchQuery)
    .then(res => updated.team = res.data[0].name)

    // career stats
    await axios.get(APIURL + '/stats/career/' + this.state.searchQuery)
    .then(res => {
      let receivedData = res.data[0]
      updated.points   = receivedData.Points
      updated.rebounds = receivedData.Rebounds
      updated.assists  = receivedData.Assists
      updated.steals   = receivedData.Steals
    })
    
    // earnings per yr
    await axios.get(APIURL + '/stats/earnings/' + this.state.searchQuery)
    .then(res => updated.earnings = res.data[0].salaryPerYear)
    
    this.setState({playerData:updated})
  }

  async updateTeamData() {
    let updated = this.state.teamData
    let titles = []

    // url & fanbase for team
    await axios.get(APIURL + '/teams/' + this.state.searchQuery)
    .then(res => {
      updated.url = res.data[0].url
      updated.fanbase = res.data[0].fanbase
    })

    // roster
    await axios.get(APIURL + '/teams/players/' + this.state.searchQuery)
    .then(res => {
      let players = []
      res.data.forEach(data => players.push(data.name))
      updated.roster = players
    })

    // titles
    await axios.get(APIURL + '/teams/titles/' + this.state.searchQuery)
    .then(res => {
      res.data.forEach(td => {if(td.wonTitle) titles.push(td.season)})
      updated.championships = titles
    })
    .then(()=>{
      let teamName = []
      let words = this.state.searchQuery.split(' ')
      words.forEach(word => teamName.push(this.capitalize(word)))
      updated.teamName = teamName.join(' ')
    })

    await axios.get(APIURL + '/teams/articles/' + this.state.searchQuery)
    .then(res => updated.articles = res.data)

    this.setState({teamData:updated})
  }

  async updateChampions() {
    let updated = this.state.championData
    let players = []

    await axios.get(APIURL + '/teams/champs/championRoster')
    .then(res => {
      res.data.forEach(data => players.push(data.playerName))
      updated.teamName = res.data[0].teamName})
    .then(updated.playerNames = players)

    this.setState({championData:updated})
  }

  updateAcronyms() {
    if(!this.state.acronyms.length) {
      axios.get(APIURL + '/acronyms')
      .then(res => this.setState({acronyms:res.data}))
    }
  }

  updateMVPs() {
    axios.get(APIURL + '/league/mvp')
    .then(res => this.setState({mvp:res.data}))
  }

  updateFanbaseData() {
    axios.get(APIURL + '/league/fanbase')
    .then(res => this.setState({fanbase:res.data}))
  }

  updatePPGData() {
    axios.get(APIURL + '/league/points')
    .then(res => this.setState({ppg:res.data}))
  }

  updateReboundsData() {
    axios.get(APIURL + '/league/rebounds')
    .then(res => this.setState({rebounds:res.data}))
  }

  updateAssistsData() {
    axios.get(APIURL + '/league/assists')
    .then(res => this.setState({assists:res.data}))
  }

  updateStealsData() {
    axios.get(APIURL + '/league/steals')
    .then(res => this.setState({steals:res.data}))
  }

  updateMostChampionshipsData() {
    axios.get(APIURL + '/league/mostChampionships')
    .then(res => this.setState({mostChampionships:res.data}))
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

  async goToFanbase() {
    await this.setState({searchQuery: 'fanbase'})
    await this.updateFanbaseData()
    await this.setState({queryType:'fanbase'})
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

  guess(possibles, queryStr, queryHash) {
    let guess    = undefined
    let minIndex = 0;
    let minHash  = Number.MAX_SAFE_INTEGER
    for(let i=0; i<possibles.length; ++i) {
      let h = Object.keys(possibles[i])[0]
      let s = Object.values(possibles[i])[0]
      let diff = Math.abs(h-queryHash)
      if(minHash > diff) {
        minHash = diff
        minIndex = i
      }
      if(s.includes(queryStr) || queryStr.includes(s)) {
        guess = s
        break
      }
    }
    guess===undefined? 
      this.setState({didYouMean: Object.values(possibles[minIndex])}) :
      this.setState({didYouMean: guess})
  }

  async goToUnknown() {
    // suggest spelling check
    let hash = (s) => s.toLowerCase().split('').reduce(function(a,b){a=((a<<1)-a)+b.charCodeAt(0);return a},0)
    let possibles = []
    let keywords  = ['team', 'teams', 'player', 'players', 'nba', 'acronyms', 'acronym', 'stat', 'stats', 'statistics', 'champion', 'champions', 'help', 'mvp', 'mvps']
    let queryStr  = this.state.searchQuery.toLowerCase()
    let queryHash = await hash(queryStr)    // push query
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
    await this.guess(possibles, queryStr, queryHash)
    this.setState({queryType:'unknown'})
  }

  render = () =>
    <>
      <nav className='navbar navbar-expand-lg navbar-dark bg-dark'>
        <a className='navbar-brand' href={HOMEURL}><img style={{width:'90px'}} src={Logo}/></a>
        <button className='navbar-toggler' type='button' data-toggle='collapse' data-target='#navbarNavDropdown' aria-controls='navbarNavDropdown' aria-expanded='false' aria-label='Toggle navigation'>
          <span className='navbar-toggler-icon'></span>
        </button>
        <div className='collapse navbar-collapse' id='navbarNavDropdown'>
          <ul className='navbar-nav'>
            <li className='nav-item dropdown'>
              <Dropdown className='nav-link dropdown-toggle' id='navbarDropdownMenuLink' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>
                Teams
              </Dropdown>
              <div className='dropdown-menu' aria-labelledby='navbarDropdownMenuLink'>{
                this.state.teamNames.sort().map((tName, i) =>
                  <Button onClick={()=>this.goToTeam(tName)} className='btn dropdown-item' key={i}>{tName}</Button>)
              }</div>
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
                <Button className='dropdown-item' onClick={()=>this.goToFanbase()}>Fanbase</Button>
              </div>
            </li>
          </ul>
              <Form.Control
                type = 'text'
                placeholder = 'Enter player name, teams, help, etc...'
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
        {                    this.state.queryType==='blank'        && <Welcome   getHelp      = {()=>this.goToHelp()}/>}
        {this.state.ready && this.state.queryType==='teams'        && <Teams     teams        = {this.state.teamNames}    style={{display:'none'}}/>}
        {this.state.ready && this.state.queryType==='players'      && <Players   players      = {this.state.playerNames}  style={{display:'none'}}/>}
        {this.state.ready && this.state.queryType==='acronyms'     && <Acronyms  acronyms     = {this.state.acronyms}     style={{display:'none'}}/>}
        {this.state.ready && this.state.queryType==='champions'    && <Champions championData = {this.state.championData} style={{display:'none'}}/>}
        {this.state.ready && this.state.queryType==='<playerName>' && <><Player  playerData   = {this.state.playerData}   style={{display:'none'}}/><br/><Season stats = {this.state.stats}/></>}
        {this.state.ready && this.state.queryType==='<teamName>'   && <Team      teamData     = {this.state.teamData}     style={{display:'none'}}/>}
        {this.state.ready && this.state.queryType==='mvp'          && <MVP       mvpData      = {this.state.mvp}          style={{display:'none'}}/>}
        {this.state.ready && this.state.queryType==='ppg'          && <PPG       ppgData      = {this.state.ppg}          style={{display:'none'}}/>}
        {this.state.ready && this.state.queryType==='fanbase'      && <Fanbase   fanData      = {this.state.fanbase}      style={{display:'none'}}/>}
        {this.state.ready && this.state.queryType==='rebounds'     && <Rebounds  reboundsData = {this.state.rebounds}     style={{display:'none'}}/>}
        {this.state.ready && this.state.queryType==='assists'      && <Assists   assistsData  = {this.state.assists}      style={{display:'none'}}/>}
        {this.state.ready && this.state.queryType==='steals'       && <Steals    stealsData   = {this.state.steals}       style={{display:'none'}}/>}
        {this.state.ready && this.state.queryType==='most championships' && <MostChampionships mostChampionshipsData = {this.state.mostChampionships} style={{display:'none'}}/>}
        {this.state.ready && this.state.queryType==='unknown'      && <Unknown   parentState  = {this.state}              style={{display:'none'}}/>}
        {this.state.ready && this.state.queryType==='help'         && <Help                                               style={{display:'none'}}/>}
      </Container>
    </>
}
