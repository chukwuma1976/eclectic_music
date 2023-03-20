import React, {useState} from 'react'

function UpdateAlbum({id, album, onUpdate}) {
    const [newAlbum, setNewAlbum] = useState({
        name: album.name,
        year_released: album.year_released,
        album_cover_url: album.album_cover_url
    })
    const {name, year_released, album_cover_url} = newAlbum

    function handleChange(event){
        setNewAlbum(newAlbum=>({...newAlbum, [event.target.name]:event.target.value}))
    }
    function handleSubmit(event){
        event.preventDefault()
        console.log(newAlbum)

        fetch(`/albums/${id}`, {
                method: "PATCH",
                headers: {"Content-Type": "application/json"},
                body: JSON.stringify(newAlbum)
            })
            .then(res=>res.json())
            .then(album=>onUpdate(album))     
    }
    return (
        <div className="add_body_part">
            <h3>Update an Album by entering the information below</h3>
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

export default UpdateAlbum