import React from 'react'
import Container from 'react-bootstrap/Container'
import Button from 'react-bootstrap/Button'

const Welcome = props =>
  <Container>
    <br/><br/><br/><br/><br/><br/><br/><br/><br/>
    <div style={{fontSize:'large', textAlign:'center'}}>
      <h2>Welcome to WikiSports</h2>
      <br/>
      <Button onClick={()=>props.getHelp()} variant='success' size='lg'>Click Here for a Tutorial</Button>
    </div>
  </Container>

export default Welcome