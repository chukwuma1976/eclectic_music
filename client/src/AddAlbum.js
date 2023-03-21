import React, {useState} from 'react'

function AddAlbum({setAlbums, artist_id}) {
        const [newAlbum, setNewAlbum] = useState({
            name: "",
            year_released: 0,
            album_cover_url: "",
            artist_id: artist_id
        })
        const {name, year_released, album_cover_url} = newAlbum
    
        function handleChange(event){
            setNewAlbum(newAlbum=>({...newAlbum, [event.target.name]:event.target.value}))
        }
        function handleSubmit(event){
            event.preventDefault()
            console.log(newAlbum)
    
            fetch("/albums", {
                    method: "POST",
                    headers: {"Content-Type": "application/json"},
                    body: JSON.stringify(newAlbum)
                })
                .then(res=>res.json())
                .then(album=>{
                    setAlbums(album)
                    addBlankSongToAlbum(album.id)
                })     
        }

        function addBlankSongToAlbum(album_id){
            const name="Please name this song"
            fetch("/songs", {
                method: "POST",
                headers: {"Content-Type": "application/json"},
                body: JSON.stringify({name, artist_id, album_id})
            }).then(res=>res.json())
            .then(data=>console.log(data))
        }
        return (
            <div className="add_body_part">
                <h3>Add an Album by entering the information below</h3>
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