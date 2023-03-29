import React, {useState} from 'react'

function AddAlbum({setAlbums, artist_id, setDisplayAddAlbum}) {
    const [errors, setErrors] = useState(null)
    const [newAlbum, setNewAlbum] = useState({
        name: "",
        year_released: 1900,
        album_cover_url: "",
        artist_id: artist_id
    })
    const {name, year_released, album_cover_url} = newAlbum
    
    function handleChange(event){
        setNewAlbum(newAlbum=>({...newAlbum, [event.target.name]:event.target.value}))
    }
    function handleSubmit(event){
        event.preventDefault()
    
        fetch("/albums", {
            method: "POST",
            headers: {"Content-Type": "application/json"},
            body: JSON.stringify(newAlbum)
        })
        .then ((res)=>{
            if (res.ok) {
                res.json().then(album=>{
                    setAlbums(album)
                    addBlankSongToAlbum(album.id)
                    setDisplayAddAlbum(false)
                })
                } else {
                    res.json().then(data=>
                        setErrors(Object.entries(data.errors).map(error=>`${error[0]} ${error[1]}`)))
                }
            })    
    }

    function addBlankSongToAlbum(album_id){
        const name="Please name or delete this song"
        fetch("/songs", {
            method: "POST",
            headers: {"Content-Type": "application/json"},
            body: JSON.stringify({name, artist_id, album_id})
        }).then(res=>res.json())
        .then(data=>console.log(data, "blank song added"))
    }
    return (
        <div className="form">
            <h4>Add an Album by entering the information below</h4>
            {errors ? errors.map(error =><p>{error}</p>) : null}
            <form onSubmit={handleSubmit}>
                <br/>                
                <label>Album name </label>
                <input 
                    type="text" 
                    name="name" 
                    placeholder="name" 
                    value={name} 
                    onChange={handleChange} 
                />
                <br/>
                <label>Year released </label>
                <input 
                    type="text" 
                    name="year_released" 
                    placeholder="year_released" 
                    value={year_released} 
                    onChange={handleChange}
                />
                <br/>
                <label>Album Cover URL </label>
                <input 
                    type="text" 
                    name="album_cover_url" 
                    placeholder="album_cover_url" 
                    value={album_cover_url} 
                    onChange={handleChange}
                />
                <br/>
                <button type="submit">Submit</button>
            </form>
        </div>
    )
}

export default AddAlbum