import React from 'react'
import Table from 'react-bootstrap/Table'

const Help = () =>
  <>
  <h1>Tutorial</h1>
  <h5>Type any of the following into the search box.</h5>
  <Table className='table-striped'>
    <thead className='thead-dark'><tr><th>Keywords</th><th>Output</th></tr></thead>
    <tbody>
      <tr><td>Teams</td><td>List of teams in the NBA</td></tr>  
      <tr><td>Players</td><td>List of players in the NBA</td></tr>  
      <tr><td>Stats</td><td>What each of the statistic abbreviation stands for</td></tr>  
      <tr><td>Champions</td><td>List of players on last year's championship winning team</td></tr>   
      <tr><td>MVP</td><td>Most valuable players by season</td></tr>
      <tr><td>Fan</td><td>To see each team's fanbse</td></tr>
      <tr><td>Points</td><td>Seasonal leaders in points</td></tr> 
      <tr><td>Rebounds</td><td>Seasonal leaders in rebounds</td></tr>  
      <tr><td>Assists</td><td>Seasonal leaders in assists</td></tr> 
      <tr><td>Steals</td><td>Seasonal leaders in steals</td></tr>  
      <tr><td>Most Championships</td><td>Player(s) with the most number of championships</td></tr>  
      <tr><td>Help</td><td>To come back to this page!</td></tr> 
    </tbody>
  </Table>
  </>

export default Help