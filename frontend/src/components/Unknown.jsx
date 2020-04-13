import React from 'react'

const Unknown = (props) => {  
  return(
    <>
      <br/>
      <h3>No results for "{props.searchQuery}"</h3>
      <h3>Did you mean...</h3>
    </>
  )
}

export default Unknown