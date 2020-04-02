import React from "react";
import ReactDOM from "react-dom";
import ProfilePic from "./Renegades.png";
//import "./styles.css";

const App = () => <TeamPage />;

class TeamPage extends React.Component {
 
  state = {
    name: "Dallas Renegades",
    fanbase: "1200000",
    championships: "2018",
    rosters: [
      { name: 'Mark Johnson', position: 'QB', number: 12},
      { name: 'Garrett Smith', position: 'WR', number: 18},
      { name: 'Kevin Wilson', position: 'DT', number: 85}
    ]
  }


RosterTable() {
  return this.state.rosters.map((player, index) => {
    const { name, position, number } = player
    return (
      <tr key={name}>
        <td>{name}</td>
        <td>{position}</td>
        <td>{number}</td>
      </tr>
    )
  })
}

RosterHeader() {
  let header = Object.keys(this.state.rosters[0])
  return header.map((key, index) => {
     return <th key={index}>{key.toUpperCase()}</th>
  })
}

  render() {
    return (
      <>
        <h1> Team name: {this.state.name} </h1>
        <img src={ProfilePic} />
        <h2>Fanbase: {this.state.fanbase}</h2>
        <h2>Championships: {this.state.championships}</h2>
        <h2>Roster:</h2>
        <table id='rosters'>
          <tbody>
            {this.RosterHeader()}
            {this.RosterTable()}
          </tbody>
        </table>
      </>
    );
  }
}

const Table = props => (
  <>

    <div>Roster:</div>
    <ul>
      {props.rosters.map(roster => (
        <li>{roster}</li>
      ))}
    </ul>
  </>
);
/*
class Table extends Component {
  constructor(props) {
     super(props) //since we are extending class Table so we have to use super in order to override Component class constructor
     this.state = { //state is by default an object
        players: [
           { name: 'Mark Johnson', position: 'QB', number: 12},
           { name: 'Garrett Smith', position: 'WR', number: 18},
           { name: 'Kevin Wilson', position: 'DT', number: 85}
        ]
     }
  }

renderTableData() {
    return this.state.players.map(([player], index) => {
       const { name, position, number } = player //destructuring
       return (
          <tr key={name}>
             <td>{name}</td>
             <td>{position}</td>
             <td>{number}</td>
          </tr>
       )
    })
 }


}*/
const rootElement = document.getElementById("root");
ReactDOM.render(<App />, rootElement);
export default App;
