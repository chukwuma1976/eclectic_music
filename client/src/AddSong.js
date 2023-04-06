import React, {useState} from 'react'

function AddSong({albumId, artistId, setSongs, setDisplayAddSong}) {
    const [errors, setErrors] = useState(null)
    const [newSong, setNewSong] = useState({name: "", artist_id: artistId, album_id: albumId})
    const {name} = newSong

    function handleChange(event){
        setNewSong(newSong=>({...newSong, name: event.target.value}))
    }
    function handleSubmit(event){
        event.preventDefault()

        fetch("/songs", {
                method: "POST",
                headers: {"Content-Type": "application/json"},
                body: JSON.stringify(newSong)
            })
        .then ((res)=>{
            if (res.ok) {
                res.json().then(song=>setSongs(song))
                setDisplayAddSong(false)
            } else {res.json().then(data=>setErrors(data.errors))}
            })
    }
    return (
        <div class="form">
            <h4>Add a Song by entering the information below</h4>
            {errors ? errors.map(error => <p>{error}</p>) : null}
            <form onSubmit={handleSubmit}>          
                <label>Song name </label>
                <input 
                    type="text" 
                    name="name" 
                    placeholder="name" 
                    value={name} 
                    onChange={handleChange} 
                />
                <button type="submit">Submit</button>
            </form>
        </div>
    )
}

export default AddSong