import React from 'react'

const Unknown = props => 
  <>
  <br/>
  <h3>No results for "{props.parentState.searchQuery}"</h3><br/>
  <h4>Did you mean "{props.parentState.didYouMean}"?</h4>
  </>

export default Unknown