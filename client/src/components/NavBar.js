import React from 'react'
import { NavLink } from "react-router-dom";
import Login from "./Login";


function NavBar( {user, setUser, onLogin, handleLogoutClick}) {

  console.log(user)

  return (
    <div>
      {user ?
        (<div>
          <p>Welcome, {user.username}</p>
          <button onClick={handleLogoutClick}>Logout</button>
        </div>)
        : (<Login onLogin={onLogin} user={user}/>)
      }

      <nav className="navbar">
        <NavLink className="navlink" to="/">Home</NavLink>
        <NavLink className="navlink" to="/favorites">My Recipes</NavLink>
      </nav>
    </div>
  )
}

export default NavBar;