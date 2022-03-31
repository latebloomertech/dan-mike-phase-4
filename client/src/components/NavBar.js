import React from 'react'
import { NavLink } from "react-router-dom";


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
        <nav className="navbar">
                <NavLink className="navlink" to="/">Home</NavLink>
                <NavLink className="navlink" to="/favorites">My Recipes</NavLink>
         </nav>
         <button onClick={handleLogoutClick}>
            Logout
          </button>
    </div>
  )
}

export default NavBar;