import React from 'react';

const App = () => (
  <>
    <SearchBar />
    <Player />
  </>
  );

class SearchBar extends React.Component {
  state = {
    query: ""
  }
  
  render() {
    return (
    <>
      <label for="playerName">Player Name </label>
      <input
        id="playerName"
        type="text"
        value={this.state.name}
        onChange={e => this.setState({ query: e.target.value })}
      />
      <button onClick={() => this.getPlayer(this.state.query)}>
        Find
      </button>
      <p>{ this.state.query }</p>
    </>
    )
  }
}
class Player extends React.Component {
  state = {
    name: "Player Name",
    team: "Dallas Renegades",
    number: 11,
    position: "WR",
    earnings: 10000,
    contractDetails: "These are the contract details of the player",
    stats: [
      { season: 2018, gamesPlayed: 7, touchdowns: 2, yards: 347 },
      { season: 2019, gamesPlayed: 12, touchdowns: 8, yards: 856 },
      { season: 2020, gamesPlayed: 14, touchdowns: 10, yards: 1056 }
   ]
  }

  renderTableHeader() {
    let header = Object.keys(this.state.stats[0])
    return header.map((key, index) => {
       return <th key={index}>{key.toUpperCase()}</th>
    })
  }
  renderTable() {
    return this.state.stats.map((playerStats, index) => {
       const { season, gamesPlayed, touchdowns, yards } = playerStats 
       return (
          <tr key={season}>
             <td>{season}</td>
             <td>{gamesPlayed}</td>
             <td>{touchdowns}</td>
             <td>{yards}</td>
          </tr>
       )
    })
  }

  render() {
    return (
      <>
        <h1>{ this.state.name }</h1>
        <img src="https://placehold.it/150x200" alt="Player image" />
        <h2>{ this.state.team }</h2>
        <h2>#{ this.state.number } { this.state.position }</h2>
        <h3>Player Earnings: { this.state.earnings }</h3>
        <p>{ this.state.contractDetails }</p>
        <table id='stats'>
        <tbody>
          <tr>{this.renderTableHeader()}</tr>
            {this.renderTable()}
          </tbody>
        </table>
      </>
    )
  }
}
export default App;
