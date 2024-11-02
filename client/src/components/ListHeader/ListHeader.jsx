import React from 'react'
import './ListHeader.scss'

const ListHeader = ({ listName }) => {
  const signOut = () => {
    console.log("Signout");
  }
  
  return (
    <div className='ListHeader'>
      <h1>{listName}</h1>
      <div className='button-container'>
        <button className='button-container__create'>Add New</button>
        <button className='button-container__Signout' onClick={signOut}>Signout</button>
      </div>
    </div>
  )
}

export default ListHeader