import React, {useContext} from 'react'
import { NavLink } from 'react-router-dom';
import { UserContext } from './User';

function HomePage() {
    const {user} = useContext(UserContext)
    return (
        <div className='home-page'>
            <h1>Hello DJ {user.username} Welcome to the Eclectic Music Database</h1>
            <NavLink to="/artists" style={{color: 'blue'}}>Artists </NavLink>
            <br/>
            <NavLink to="/albums" style={{color: 'blue'}}>Albums </NavLink>
            <br/>
            <NavLink to="/members" style={{color: 'blue'}}>Members </NavLink>
            <br/>
            <NavLink to="/songs" style={{color: 'blue'}}>Songs </NavLink>
            <br/>
            <NavLink to="/signout" style={{color: 'blue'}}>Sign Out </NavLink>
        </div>
    )
}

export default HomePage