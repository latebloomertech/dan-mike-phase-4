import React from 'react'
import { NavLink } from "react-router-dom";

function NavBar() {
  return (
    <div >
        NavBar
        <nav className="navbar">
                <NavLink className="navlink" to="/">Home</NavLink>
                <NavLink className="navlink" to="/testing">Testing</NavLink>
                <NavLink className="navlink" to="/favorites">My Recipes</NavLink>
            </nav>

    </div>
  )
}

export default NavBar