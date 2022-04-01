import React from 'react'
import { NavLink } from "react-router-dom";
import Login from "./Login";


function NavBar( {user, setUser }) {
  function handleLogoutClick() {
    fetch("/logout", { method: "DELETE" }).then((r) => {
      if (r.ok) {
        setUser(null);
      }
    });
  }

  return (
    <div>
      {user ?
        (<div>
          <p>Welcome, {user.username}</p>
          <button onClick={handleLogoutClick}>Logout</button>
        </div>)
        : (<Login onLogin={setUser} />)
      }

      <nav className="navbar">
        <NavLink className="navlink" to="/">Home</NavLink>
        <NavLink className="navlink" to="/favorites">My Recipes</NavLink>
      </nav>
    </div>
  )
}

export default NavBar;