import React from 'react'

function HomePage({user}) {
    return (
        <div className='home-page'>
            <h1>Hello, {user.username} Welcome to the Eclectic Music Database</h1>
        </div>
    )
}

export default HomePage