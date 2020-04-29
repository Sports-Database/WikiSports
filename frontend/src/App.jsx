import React      from 'react'
import { BrowserRouter as Router, Route, Switch } from 'react-router-dom'
import Home     from './components/Home'
import { ROUTES } from './routes'

const App = () => 
  <Router>
    <Home/>
    <Switch>
      { ROUTES.map((route,i) => <Route exact key={i} {...route}/>) }
    </Switch>
  </Router>  

export default App