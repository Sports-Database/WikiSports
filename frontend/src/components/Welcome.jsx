import React     from 'react'
import Container from 'react-bootstrap/Container'
import Button    from 'react-bootstrap/Button'

const Welcome = props =>
  <Container>
    <br/><br/>
    <div style={{fontSize:'large', textAlign:'center'}}>
      <h2>Welcome to WikiSports</h2>
      <br/>
      <Button onClick={()=>props.getHelp()} href='help' variant='success' size='lg'>Click Here for Tutorial</Button>
    </div>
  </Container>

export default Welcome