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
    team: "LA Lakers",
    number: 11,
    position: "PG",
    earnings: 10000,
    contractDetails: "These are the contract details of the player",
    stats: [
      { season: 2018, gamesPlayed: 61, PPG: 9.6, rebounds: 2.3, assists: 2.1, fouls: 0.8, steals: 0.4, turnovers: 1.2 },
      { season: 2018, gamesPlayed: 72, PPG: 11.7, rebounds: 4.5, assists: 3.6, fouls: 1.2, steals: 0.7, turnovers: 1.8 },
      { season: 2020, gamesPlayed: 79, PPG: 14.4, rebounds: 6.6, assists: 4.1, fouls: 1.6, steals: 0.8, turnovers: 2.1 }
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
       const { season, gamesPlayed, PPG, rebounds, assists, fouls, steals, turnovers } = playerStats 
       return (
          <tr key={season}>
             <td>{season}</td>
             <td>{gamesPlayed}</td>
             <td>{PPG}</td>
             <td>{rebounds}</td>
             <td>{assists}</td>
             <td>{fouls}</td>
             <td>{steals}</td>
             <td>{turnovers}</td>
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
