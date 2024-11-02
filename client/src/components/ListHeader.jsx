import React from 'react'

const ListHeader = ({ listName }) => {
  return (
    <div className='ListHeader'>
      <h1>{listName}</h1>
    </div>
  )
}

export default ListHeader