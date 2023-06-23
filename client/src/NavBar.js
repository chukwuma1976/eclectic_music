import React from 'react'
import { NavLink } from "react-router-dom";

function NavBar() {
    return (
        <div>
          <NavLink
            to="/"
            style={({isActive}) => ({background: isActive ? 'red' : ''})}
            className="navbar"
          >
            Home Page
          </NavLink>
          <NavLink
            to="/artists_"
            style={({isActive}) => ({background: isActive ? 'red' : ''})}
            className="navbar"
          >
            Artists
          </NavLink>
          <NavLink
            to="/albums_"
            style={({isActive}) => ({background: isActive ? 'red' : ''})}
            className="navbar"
          >
            Albums
          </NavLink>
          <NavLink
            to="/members_"
            style={({isActive}) => ({background: isActive ? 'red' : ''})}
            className="navbar"
          >
            Members
          </NavLink>
          <NavLink
            to="/songs_"
            style={({isActive}) => ({background: isActive ? 'red' : ''})}
            className="navbar"
          >
            Songs
          </NavLink>
          <NavLink
            to="/signout"
            style={({isActive}) => ({background: isActive ? 'red' : ''})}
            className="navbar"
          >
            Log Out
          </NavLink>
        </div>
      );
}

export default NavBar