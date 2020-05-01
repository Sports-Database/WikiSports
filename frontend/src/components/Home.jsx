import React                      from 'react'
import axios                      from 'axios'
import { Button, Form, Dropdown } from 'react-bootstrap/'
import { Link }                   from 'react-router-dom'
import Logo                       from '../assets/logo.png'
import Unknown                    from './Unknown'
import {APIURL} from "./URL.jsx"
import {HOMEURL} from "./URL.jsx"

export default class Home extends React.Component {  
  state = {
    searchQuery : '',
    queryType   : '',
    players     : [],
    teams       : [],
    teamNames   : ['Portland Trail Blazers','Los Angeles Lakers','Golden State Warriors','Dallas Mavericks','Houston Rockets','Brooklyn Nets','New York Knicks','Utah Jazz','Memphis Grizzlies','Denver Nuggets','Sacramento Kings','New Orleans Pelicans','Los Angeles Clippers','Minnesota Timberwolves','Boston Celtics','Chicago Bulls','Toronto Raptors','Miami Heat','Milwaukee Bucks','Detroit Pistons','Philadelphia 76ers','Atlanta Hawks','Washington Wizards','Charlotte Hornets','Indiana Pacers','Cleveland Cavaliers','Orlando Magic','San Antonio Spurs','Phoenix Suns','Oklahoma City Thunder'],
    didYouMean  : '',
    link        : '',
    storedType  : ''
  }
  
  componentDidMount() {
    axios
      .get(APIURL + '/players')
      .then(res => this.setState({players: res.data}))
    axios
      .get(APIURL + '/teams')
      .then(res => this.setState({teams: res.data}))
  }

  async onFind() {
    await this.initQueryType()
    await this.redirect()
  }

  async initQueryType() {
    let basicType = {
      'teams'    : 'teams'    , 'team'    : 'teams'    ,   
      'players'  : 'players'  , 'player'  : 'players'  ,
      'acronyms' : 'acronyms' , 'acronym' : 'acronyms' , 'acro'  : 'acronyms'  , 'stat' : 'acronyms' , 'stats' : 'acronyms' , 'statistics' : 'acronyms' , 'statistic' : 'acronyms' , 
      'champions': 'champions', 'champion': 'champions', 'champs': 'champions', 'champ': 'champions',
      'help'     : 'help'     , 'h'       : 'help'     , 'etc'   : 'help',
      'fanbase'  : 'fanbase'  , 'fan'     : 'fanbase'  , 'fans'  : 'fanbase', 'popularity' : 'fanbase',
      'mvp'      : 'mvp'      , 'mvps'    : 'mvp'      , 'most valuable player':'mvp' , 'most valuable players':'mvp',
      'points'   : 'points'   , 'pps'     : 'points'   , 'scoring leader' : 'points'     , 'scoring leaders' : 'points', 'points per game': 'points', 'scorers': 'points',
      'assists'  : 'assists'  , 'assist'  : 'assists'  , 'assists leader' : 'assists' , 'passing leader' : 'assists', 'assists leaders' : 'assists',
      'rebounds' : 'rebounds' , 'rebound' : 'rebounds' , 'rebounds leader': 'rebounds', 'boards' : 'rebounds', 'rebounds leaders': 'rebounds',
      'steals'   : 'steals'   , 'steal'   : 'steals'   , 'steals leader'  : 'steals'  , 'steals leaders'  : 'steals',
      'most championships' : 'most', 'championships': 'most', 'most championship' : 'most', 'rings' : 'most'
    }
    let query                = this.state.searchQuery.toLowerCase()
    let isNotPlayerName      = false
    let isNotTeamName        = false
    let lowerCaseTeamNames   = this.state.teamNames.map(name=>name.toLowerCase())
    let lowerCasePlayerNames = []
    this.state.players.forEach(obj=>lowerCasePlayerNames.push(obj.name.toLowerCase()))
    
    // query is blank
    if(!this.state.searchQuery.length) this.setState({queryType: ''})
    
    // query is basic type
    else if(Object.keys(basicType).indexOf(query)!==-1) { // if query is a key in basic type
      this.setState({queryType: basicType[query]})
    }
    
    // query is either player name or team name
    else { 
      lowerCaseTeamNames.indexOf(query)!==-1?
        this.setState({queryType:'<teamName>'}) : isNotTeamName = true  
      lowerCasePlayerNames.indexOf(query)!==-1?
        this.setState({queryType:'<playerName>'}) : isNotPlayerName = true    
    }

    // query is unknown
    if(isNotPlayerName && isNotTeamName) this.setState({queryType:'unknown'})

    //console.log(this.state.queryType)
  }

  redirect = () => {
    switch(this.state.queryType) {
      case '<playerName>': 
        for(let obj of this.state.players) 
          if(obj.name.toLowerCase()===this.state.searchQuery.toLowerCase()) {
            window.location = HOMEURL + '/players/' + obj.id
            break
          }
        break
      case '<teamName>':
        window.location = HOMEURL + '/teams/' + this.teamNameToId(this.state.searchQuery)
        break
      case 'unknown':
        this.goToUnknown()
        break
      default: 
        window.location = HOMEURL + '/' + this.state.queryType
    }
  }

  teamNameToId = teamName => {
    for(let obj of this.state.teams) 
      if(obj.name.toLowerCase()===teamName.toLowerCase())
        return obj.id
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
      this.setState({didYouMean: Object.values(possibles[minIndex])[0]}) :
      this.setState({didYouMean: guess})
  }

  async goToUnknown() {
    // suggest spelling check
    let hash = (s) => s.toLowerCase().split('').reduce(function(a,b){a=((a<<1)-a)+b.charCodeAt(0);return a},0)
    let possibles = []
    let keywords  = ['teams', 'players', 'acronyms', 'stats', 'champions', 'fanbase', 'mvp', 'points', 'rebounds', 'assists', 'steals', 'most championships', 'help']
    let queryStr  = this.state.searchQuery.toLowerCase()
    let queryHash = await hash(queryStr)    // push query
    await this.state.players.forEach(p_obj => {  // push player names
      let str = p_obj.name.toLowerCase()
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

    for(let keyword of keywords)
      if(keyword===this.state.didYouMean) {
        this.setState({link: '/' + keyword})
        this.setState({storedType: keyword})
        return
      }
    
    for(let team of this.state.teams)
      if(team.name.toLowerCase()===this.state.didYouMean) {
        this.setState({link:'/teams/' + team.id})
        this.setState({storedType:'<teamName>'})
        return
      }
    
    for(let player of this.state.players)
      if(player.name.toLowerCase()===this.state.didYouMean) {
        this.setState({link:'/players/' + player.id})
        this.setState({storedType:'<playerName>'})
        return
      }
  }

  updateType() {this.setState({queryType: this.state.storedType})}

  render = () =>
    <>
      <nav className='navbar navbar-expand-lg navbar-dark bg-dark'>
        <a className='navbar-brand' href={HOMEURL}><img style={{width:'90px'}} src={Logo} alt='logo'/></a>
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
                  <Link className='dropdown-item' onClick={()=>window.location = HOMEURL + '/teams/' + this.teamNameToId(tName)} key={i}>{tName}</Link>)
              }</div>
            </li>
            <li className='nav-item dropdown'>
              <Dropdown className='nav-link dropdown-toggle' id='navbarDropdownMenuLink' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>
                League Leaders
              </Dropdown>
              <div className='dropdown-menu' aria-labelledby='navbarDropdownMenuLink'>
                <Link className='dropdown-item' onClick={() => window.location = HOMEURL + '/mvp'}>MVP</Link>
                <Link className='dropdown-item' onClick={() => window.location = HOMEURL + '/points'}>Points</Link>
                <Link className='dropdown-item' onClick={() => window.location = HOMEURL + '/rebounds'}>Rebounds</Link>
                <Link className='dropdown-item' onClick={() => window.location = HOMEURL + '/assists'}>Assists</Link>
                <Link className='dropdown-item' onClick={() => window.location = HOMEURL + '/steals'}>Steals</Link>
                <Link className='dropdown-item' onClick={() => window.location = HOMEURL + '/most'}>Championships</Link>
                <Link className='dropdown-item' onClick={() => window.location = HOMEURL + '/fanbase'}>Fanbase</Link>
              </div>
            </li>
          </ul>
            <Form.Control
              type = 'text'
              placeholder = 'Enter player name, teams, help, etc...'
              style = {{width: '80%', float: 'left', marginLeft:'.5em'}}
              onClick = {() => this.setState({queryType:''})}
              onChange = {e => this.setState({searchQuery:e.target.value})}
              onKeyPress={(target)=>{if(target.charCode===13) this.onFind()}}
            />
            <Button onClick={() => this.onFind()} variant='success' style={{marginRight:'1em'}}>Find</Button>
        </div>
      </nav><br/>
      {this.state.queryType==='unknown' && <Unknown parentState={this.state} clickedGuess={() => this.updateType()}/>}
    </>
}