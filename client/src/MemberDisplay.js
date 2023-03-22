import React, {useState} from 'react'
import UpdateMember from './UpdateMember'

function MemberDisplay({member, onUpdate, onDelete}) {
    const {id, name, image_url, artists}=member;
    const [displayUpdate, setDisplayUpdate] = useState(false)
    const [displayProfile, setDisplayProfile] = useState(false)
    const [displayDelete, setDisplayDelete] = useState(false)

    function deleteMember(id){
        fetch(`/members/${id}`, {
            method: 'DELETE'
        })
        onDelete(id)
    }
    
    return (
        <div className={!displayProfile? "profile" : "profile-display"} class="profile">
            <button onClick={() => setDisplayProfile(!displayProfile)}>
                {!displayProfile ? "Click to expand" : "Click to collapse"}
            </button>
            <h1>{name}</h1>
            {artists.map(artist => <p>{artist.name}</p>)}
            {!displayProfile ? null : 
            (<section>
                <button className={!displayUpdate ? "" : "button-clicked"} onClick={()=>setDisplayUpdate(!displayUpdate)}>
                    {!displayUpdate ? "Click to update member" : "Click to close update form"}
                </button>
                <br/>
                {!displayUpdate ? null : <UpdateMember id={id} member={member} onUpdate={onUpdate} />}
                <button className={!displayDelete ? "" : "button-clicked"}onClick={()=>setDisplayDelete(!displayDelete)}>
                    {!displayDelete ? "Click to delete member" : "Click to keep form"}
                </button>
                <br/>
                {!displayDelete ? null : <button onClick={()=>deleteMember(id)}>Click to delete</button>}
                <br/>
                <img className="member-pic" src={image_url} alt={name}/>
            </section>)}
        </div>
    )
}

export default MemberDisplay