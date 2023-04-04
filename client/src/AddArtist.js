import React, {useState, useContext} from 'react'
import { UserContext } from './User'

function AddArtist({artists, setArtists, setShowAdd}) {
    const {user} = useContext(UserContext)
    const [errors, setErrors] = useState(null)
    const [newArtist, setNewArtist] = useState({
        name: "",
        genre: "",
        date_established: 1900,
        interesting_fact: "",
        arist_image_url: "",
        user_id: user.id
    })
    const {name, genre, date_established, interesting_fact, artist_image_url} = newArtist

    function handleChange(event){
        setNewArtist(newArtist=>({...newArtist, [event.target.name]:event.target.value}))
    }
    function handleSubmit(event){
        event.preventDefault()

        fetch("/artists", {
                method: "POST",
                headers: {"Content-Type": "application/json"},
                body: JSON.stringify(newArtist)
            })
        .then ((res)=>{
            if (res.ok) {
                res.json().then(artist=>setArtists([...artists, artist]))
                setShowAdd(false)
            } else {res.json().then(data=>setErrors(data.errors))}
            })            
    }
    return (
        <div className="form">
            <h4>Add an Artist by entering the information below</h4>
            {errors ? errors.map(error=><p>{error}</p>): null}
            <form onSubmit={handleSubmit}>
                <br/>                
                <label>Artist name </label>
                <input 
                    type="text" 
                    name="name" 
                    placeholder="name" 
                    value={name} 
                    onChange={handleChange} 
                />
                <br/>
                <label>Genre </label>
                <input 
                    type="text" 
                    name="genre" 
                    placeholder="genre" 
                    value={genre} 
                    onChange={handleChange}
                />
                <br/>
                <label>Date established </label>
                <input 
                    type="text" 
                    name="date_established" 
                    placeholder="date_established" 
                    value={date_established} 
                    onChange={handleChange}
                />
                <br/>
                <label>Interesting fact about artist</label>
                <br/>
                <textarea
                    type="text" 
                    name="interesting_fact" 
                    rows="4"
                    cols="50"
                    id = "interesting_fact"
                    value={interesting_fact} 
                    onChange={handleChange}
                >
                </textarea>
                <br/>
                <label>Image URL </label>
                <input 
                    type="text" 
                    name="artist_image_url" 
                    placeholder="artist_image_url" 
                    value={artist_image_url} 
                    onChange={handleChange}
                />
                <br/>
                <button type="submit">Submit</button>
            </form>
        </div>
    )
}

export default AddArtist