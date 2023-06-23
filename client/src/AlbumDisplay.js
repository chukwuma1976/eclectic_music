import React, {useState} from 'react'
import AddSong from './AddSong'
import UpdateAlbum from './UpdateAlbum'
import { NavLink } from 'react-router-dom'

function AlbumDisplay({album, onUpdate, addSongToAlbum, onDelete}) {
    const {id, name, genre, year_released, artists, songs, album_cover_url} = album
    const [displayProfile, setDisplayProfile] = useState(false)
    const [displayAddSong, setDisplayAddSong] = useState(false)
    const [albumSongs, setAlbumSongs] = useState(songs)
    const [displayUpdate, setDisplayUpdate] = useState(false)
    const [wantToDelete, setWantToDelete] = useState(false)

    function addSong(song){
        const updatedAlbum=[...songs, song]
        setAlbumSongs([...albumSongs, song])
        addSongToAlbum(id, updatedAlbum)
    }

    function deleteAlbum(id){
        console.log(id)
        fetch(`/albums/${id}`, {
            method: "DELETE"
        })
        onDelete(id)
    }

    return (
        <div className={!displayProfile? "album-profile" : "album-profile-display"} key={id}>
            <button onClick={() => setDisplayProfile(!displayProfile)}>
                {!displayProfile ? "Click to expand" : "Click to collapse"}
            </button>
            <h3>{name} ({year_released})</h3>
            <button className={!displayUpdate ? "" : "button-clicked"} onClick={()=>setDisplayUpdate(!displayUpdate)}>
                {!displayUpdate ? "Click to update album" : "Click to collapse form to update album"}
            </button>
            {!displayUpdate ? null : <UpdateAlbum id={id} album={album} onUpdate={onUpdate} setDisplayUpdate={setDisplayUpdate}/>}
            <button className={!displayAddSong ? "" : "button-clicked"}onClick={() => setDisplayAddSong(!displayAddSong)}>
                {!displayAddSong ? "Click to add a new song" : "Click to collapse form to add a new song"}
            </button>
            {!displayAddSong ? 
                null: <AddSong albumId={id} artistId={artists[0].id} setSongs={addSong} setDisplayAddSong={setDisplayAddSong}/>}
            <button className={!wantToDelete ? "" : "button-clicked"} onClick={()=>setWantToDelete(!wantToDelete)}>
                {!wantToDelete ? "Do you want to delete this album?" : "Click if you want to keep this album"}               
            </button>
            {!wantToDelete ? null : <button onClick={()=>deleteAlbum(id)}>Delete Album</button>}
            {!displayProfile ? null : 
            (<section>
                <h3>Artist(s):</h3>
                <div>
                    {artists.map(artist => <p key={artist.id}>{artist.name}</p>)} 
                </div>
                <h3>Genre: {genre}</h3>
                <br/>
                <img className={!displayProfile? "profile-image" : "enlarged-image"} src={album_cover_url} alt={name}/>
                <h3>Songs</h3>
                <div className='artist-container'>
                    {songs.map(song => <p key={song.id}>{song.name}</p>)}
                </div>
                <br/>
                <div className='redirect'>             
                    <NavLink to="/songs_" style={{color: 'blue'}}>
                        Edit and Delete Songs
                    </NavLink>               
                </div>
            </section>)}
        </div>
    )
}

export default AlbumDisplay