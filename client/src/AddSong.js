import React, {useState} from 'react'

function AddSong({albumId, artistId, setSongs}) {
    const [newSong, setNewSong] = useState({name: "", artist_id: artistId, album_id: albumId})
    const {name} = newSong

    function handleChange(event){
        setNewSong(newSong=>({...newSong, [event.target.name]:event.target.value}))
    }
    function handleSubmit(event){
        event.preventDefault()
        console.log(newSong)

        // fetch("/songs", {
        //         method: "POST",
        //         headers: {"Content-Type": "application/json"},
        //         body: JSON.stringify(newSong)
        //     })
        //     .then(res=>res.json())
        //     .then(song=>setSongs(song))     
    }
    return (
        <div>
            <h3>Add a Song by entering the information below</h3>
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