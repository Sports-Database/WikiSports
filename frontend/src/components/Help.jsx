import React from 'react'
import { Table, Container } from 'react-bootstrap'
import { Link } from 'react-router-dom'

const Help = () =>
  <Container>
  <h1>Tutorial</h1>
  <h5>Type any of the following into the search box.</h5>
  <Table className='table-striped'>
    <thead className='thead-dark'><tr><th>Keywords</th><th>Output</th></tr></thead>
    <tbody>
      <tr><td><Link to='teams'>Teams</Link></td><td>List of teams in the NBA</td></tr>  
      <tr><td><Link to='players'>Players</Link></td><td>List of players in the NBA</td></tr>  
      <tr><td><Link to='stats'>Stats</Link></td><td>What each of the statistic abbreviation stands for</td></tr>  
      <tr><td><Link to='champions'>Champions</Link></td><td>List of players on last year's championship winning team</td></tr>   
      <tr><td><Link to='mvp'>MVP</Link></td><td>Most valuable players by season</td></tr>
      <tr><td><Link to='fanbase'>Fanbase</Link></td><td>To see each team's fanbse</td></tr>
      <tr><td><Link to='points'>Points</Link></td><td>Seasonal leaders in points</td></tr> 
      <tr><td><Link to='rebounds'>Rebounds</Link></td><td>Seasonal leaders in rebounds</td></tr>  
      <tr><td><Link to='assists'>Assists</Link></td><td>Seasonal leaders in assists</td></tr> 
      <tr><td><Link to='steals'>Steals</Link></td><td>Seasonal leaders in steals</td></tr>  
      <tr><td><Link to='most'>Most Championships</Link></td><td>Player(s) with the most number of championships</td></tr>  
      <tr><td><Link to='help'>Help</Link></td><td>To come back to this page!</td></tr> 
    </tbody>
  </Table>
  </Container>

export default Help