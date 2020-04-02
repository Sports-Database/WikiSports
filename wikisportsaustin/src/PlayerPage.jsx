import React, { Component } from 'react';
//import {AppProvider, Page} from '@shopify/polaris';
//import TableCreation from './TableCreation';
import './App.css';
const App = () => <PlayerPage />;
class PlayerPage extends Component {
state = {
 headers: [
    "Year",
    "Yards",
    "Touchdowns"
  ],
  rows: [
    [
      '2018',
      '4700',
      '42'
    ],
    [ 
      '2019',
      '4300',
      '29' 
    ],
    [ '2020',
      '3600',
      '35'
    ]
  ]
}
 /* 
  const rows = [
    [
      '2018',
      '4700',
      '42'
    ],
    [ 
      '2019',
      '4300',
      '29' 
    ],
    [ '2020',
      '3600',
      '35'
    ]
  ]
  return (

        <TableCreation headings={headings} rows={rows} />

  );
*/
}
//const rootElement = document.getElementById("root");
//ReactDOM.render(<App />, rootElement);