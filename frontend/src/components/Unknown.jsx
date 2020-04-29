import React from 'react'
import { Link }  from 'react-router-dom'
import Container from 'react-bootstrap/Container'

const Unknown = props =>
  <Container>
    <h4>No results for "{props.parentState.searchQuery}"</h4>
    <h5>Did you mean "<Link to={props.parentState.link} onClick={()=>props.clickedGuess()}>{props.parentState.didYouMean}</Link>"?</h5>
    <br/>
  </Container>

export default Unknown