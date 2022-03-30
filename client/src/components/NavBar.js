import React, {useState} from 'react'
import { NavLink } from "react-router-dom";


function NavBar() {

    function Login({ onLogin }) {
        const [username, setUsername] = useState("");
      
        function handleSubmit(e) {
          e.preventDefault();
          fetch("/login", {
            method: "POST",
            headers: {
              "Content-Type": "application/json",
            },
            body: JSON.stringify({ username }),
          })
            .then((r) => r.json())
            .then((user) => onLogin(user));
        }
      
        return (
          <form onSubmit={handleSubmit}>
            <input
              type="text"
              value={username}
              onChange={(e) => setUsername(e.target.value)}
            />
            <button type="submit">Login</button>
          </form>
        );
      }

  return (
    <div className="navbar">
        <nav>
            <NavLink className="navlink" to="/">Home</NavLink>
            <NavLink className="navlink" to="/testing">Testing</NavLink>
            <NavLink className="navlink" to="/favorites">My Recipes</NavLink>
        </nav>
        
    </div>
  )
}

export default NavBar