import React, {useState, useContext} from 'react'
import { UserContext } from './User'
import { NavLink } from 'react-router-dom'

function GoSolo({member, onUpdate}) {
    const {user, today} = useContext(UserContext)
    const [errors, setErrors] = useState(null)
    const {id, name, artists, image_url} = member
    const [nowSoloArtist, setNowSoloArtist] = useState(false)
    const newSoloArtist= {
        name: name,
        genre: artists[0].genre,
        date_established: today.getFullYear(),
        interesting_fact: `${name} is a member of ${artists[0].name}.`,
        artist_image_url: image_url,
        user_id: user.id
    }
    function addSelftoArtist(artist){
        fetch("/artist_members", {
            method: "POST",
            headers: {"Content-Type": "application/json"},
            body: JSON.stringify({artist_id: artist.id, member_id: id})
        }).then(res=>res.json())
        .then(connection=>console.log(connection))
    }
    
    function createSoloArtist(event){
        fetch("/artists", {
                method: "POST",
                headers: {"Content-Type": "application/json"},
                body: JSON.stringify(newSoloArtist)
            })
        .then ((res)=>{
            if (res.ok) {
                res.json().then((artist)=>{
                    addSelftoArtist(artist)
                    setNowSoloArtist(true)
                    const artistsArray = [...member.artists, {id: artist.id, name: artist.name, genre: artist.genre}]
                    const updatedMember = {...member, artists: artistsArray}
                    onUpdate(updatedMember)
                })
            } else {
                res.json().then(data=>
                    setErrors(Object.entries(data.errors).map(error=>`${error[0]} ${error[1]}`)))
                }
            })            
    }
    return (
        <div className="form">
            <button onClick={createSoloArtist}>Make Solo Debut</button>
            {errors ? errors.map(error=><p>{error}</p>): null}
            {nowSoloArtist ? 
                (<div>
                    <h5>{member.name} has made a Solo Debut!</h5>
                    <NavLink to="/artists" style={{color: 'blue'}}>
                        Click to witness Solo Debut
                    </NavLink>
                </div>) : null}
        </div>
    )
}

export default GoSolo