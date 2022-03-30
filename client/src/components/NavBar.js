import React, {useState} from 'react'
import { NavLink } from "react-router-dom";


function NavBar() {
  return (
    <div >
        NavBar
        <nav className="navbar">
                <NavLink className="navlink" to="/">Home</NavLink>
                <NavLink className="navlink" to="/favorites">My Recipes</NavLink>
                {/* <NavLink className="navlink" to="/recipepage">testRecipeDetail</NavLink> */}
            </nav>


export default NavBar