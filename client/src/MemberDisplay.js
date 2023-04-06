import React, {useState} from 'react'
import UpdateMember from './UpdateMember'
import GoSolo from './GoSolo';

function MemberDisplay({member, onUpdate, onDelete}) {
    const {id, name, image_url, artists}=member;
    const [displayUpdate, setDisplayUpdate] = useState(false)
    const [displayProfile, setDisplayProfile] = useState(false)
    const [displayDelete, setDisplayDelete] = useState(false)
    const [displayWantSolo, setDisplayWantSolo] = useState(false)

    function deleteMember(id){
        fetch(`/members/${id}`, {
            method: 'DELETE'
        })
        onDelete(id)
    }
    
    return (
        <div className={!displayProfile? "member-profile" : "member-profile-display"}>
            <button onClick={() => setDisplayProfile(!displayProfile)}>
                {!displayProfile ? "Click to expand" : "Click to collapse"}
            </button>
            <h1>{name}</h1>
            {artists.map(artist => <p key={artist.id}>{artist.name}</p>)}
            {!displayProfile ? null : 
            (<section>
                <button className={!displayUpdate ? "" : "button-clicked"} onClick={()=>setDisplayUpdate(!displayUpdate)}>
                    {!displayUpdate ? "Click to update member" : "Click to close update form"}
                </button>
                <br/>
                {!displayUpdate ? 
                    null : <UpdateMember member={member} onUpdate={onUpdate} setDisplayUpdate={setDisplayUpdate}/>}
                
                <button className={!displayWantSolo ? "" : "button-clicked"} onClick={()=>setDisplayWantSolo(!displayWantSolo)}>
                    {!displayWantSolo ? "Click to go solo" : "Click to close"}
                </button>
                <br/>
                {!displayWantSolo ? 
                    null : <GoSolo member={member} />}
                
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