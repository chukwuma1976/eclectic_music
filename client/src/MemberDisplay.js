import React, {useState} from 'react'
import UpdateMember from './UpdateMember'

function MemberDisplay({member, onUpdate}) {
    const {id, name, image_url, artists}=member;
    const [displayUpdate, setDisplayUpdate] = useState(false)
    
    return (
        <div class="profile">
            <h1>{name}</h1>
            {artists.map(artist => <p>{artist.name}</p>)}
            <br />
            <button onClick={()=>setDisplayUpdate(!displayUpdate)}>
                {!displayUpdate ? "Click to update member" : "Click to close update form"}
            </button>
            <br/>
            {!displayUpdate ? null : <UpdateMember id={id} member={member} onUpdate={onUpdate} />}
            <img className="member-pic" src={image_url} alt={name}/>
        </div>
    )
}

export default MemberDisplay