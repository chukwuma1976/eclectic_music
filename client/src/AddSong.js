import React, {useState} from 'react'

function AddSong({albumId, artistId, setSongs}) {
    const [errors, setErrors] = useState(null)
    const [newSong, setNewSong] = useState({name: "", artist_id: artistId, album_id: albumId})
    const {name} = newSong

    function handleChange(event){
        setNewSong(newSong=>({...newSong, name: event.target.value}))
    }
    function handleSubmit(event){
        event.preventDefault()
        console.log(newSong)

        fetch("/songs", {
                method: "POST",
                headers: {"Content-Type": "application/json"},
                body: JSON.stringify(newSong)
            })
        .then ((res)=>{
            if (res.ok) {
                res.json().then(song=>setSongs(song))
            } else {
                res.json().then(data=>
                    setErrors(Object.entries(data.errors).map(error=>`${error[0]} ${error[1]}`)))
                }
            })
            // .then(res=>res.json())
            // .then(song=>setSongs(song))     
    }
    return (
        <div class="form">
            <h3>Add a Song by entering the information below</h3>
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