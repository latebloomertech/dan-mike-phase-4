import React from 'react'
import NavBar from './NavBar'
import Login from './Login'

function Header() {
  return (
    
    <div className='header'>
    <NavBar />
    <Login id='login'/>
    <img id= "logo" src='/images/Baked-logo.png' />
    {/* <h1 className="main-title">Let's Get Baking!</h1>
        <h2 className="main-subtitle">Recipes inspired by your pantry</h2> */}
    
    </div>
  )
}

export default Header