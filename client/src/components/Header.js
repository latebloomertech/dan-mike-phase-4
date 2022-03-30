import React from 'react'
import NavBar from './NavBar'

function Header() {
  return (
    <div className='header'>
    <h1 className="main-title">Let's Get Baking!</h1>
        <h2 className="main-subtitle">Recipes inspired by your pantry</h2>
    <NavBar />
    </div>
  )
}

export default Header