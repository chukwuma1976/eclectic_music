import React, {useState, useContext} from 'react'
import { UserContext } from './User'
import { useNavigate } from 'react-router-dom'

function GoSolo({member}) {
    const {user, today} = useContext(UserContext)
    const navigate = useNavigate()
    const [errors, setErrors] = useState(null)
    const {id, name, artists, image_url} = member
    const newSoloArtist= {
        name: name,
        genre: artists[0].genre,
        date_established: today.getFullYear(),
        interesting_fact: `${name} is a member of ${artists[0].name}.`,
        artist_image_url: image_url,
        user_id: user.id
    }
    
    function createSoloArtist(){   
        fetch(`/gosolo/${id}`, {
            method: "POST",
            headers: {"Content-Type": "application/json"},
            body: JSON.stringify(newSoloArtist)
        })
        .then ((res)=>{
            if (res.ok) {
                res.json().then((artist)=>{
                    console.log(artist.id)
                    navigate(`/solo_artist/${artist.id}`)
            })
            } else {res.json().then(data=> setErrors(data.errors))}
        })        
    }
    return (
        <div className="form">
            <button onClick={createSoloArtist}>Make Solo Debut</button>
            {errors ? errors.map(error=><p>{error}</p>): null}
        </div>
    )
}

export default GoSolo