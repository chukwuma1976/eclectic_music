import React, {useState} from 'react'

function SignOut({setUser}) {
    const [wantToLogOut, setWantToLogOut] = useState(false)
    function LogOut() {
        fetch('/logout', {
            method: 'DELETE'
        })
        .then(()=>console.log("logged out"))
    }

    return (
        <div className='form'>
            <h1>Do you want to Log Out ?</h1> 
            <button onClick={()=>setWantToLogOut(!wantToLogOut)}>Click Here</button>
            {wantToLogOut? 
             (<div>
                <h1>Are you sure?</h1>
                <button onClick={()=>LogOut()}>Yes</button>
                <button onClick={()=>setWantToLogOut(!wantToLogOut)}>No</button>
            </div>) 
            : null}
        </div>
    )
}

export default SignOut