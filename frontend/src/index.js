// import
import React from 'react'        // react
import ReactDOM from 'react-dom' // react DOM
import App from './App'          // app
import 'bootstrap'               // bootstrap
import 'bootstrap/dist/css/bootstrap.min.css' // import bootstrap stylesheet

ReactDOM.render(<App/>, document.getElementById('root'))

/*
input:  player name
output: career stats
        career earnings
        stats for each year
        # of championships (can be sorted)
        contract details

input:  team name
output: brief description of that team
        team roster for each year
        titles won & in what years
        amount of fan base
        
input:  stat acronym
output: sortable list of players who have that stat

input:  search teams
output: list of teams

input:  search players
output: list of players

input:  search stats (MVP, TD, etc)
output: list of stats and what each stat acronym stands for

future algorithm:
- does it say
    - <player name>
    - <team name>
    - 'teams'
    - 'players'
    - 'league'
    - 'stats'
    - 'help'
*/