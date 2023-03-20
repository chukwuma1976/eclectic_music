import React, {useState} from 'react'
import ArtistAlbumSongsDisplay from './ArtistAlbumSongsDisplay'
import AddSong from './AddSong'
import UpdateAlbum from './UpdateAlbum'

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
        fetch(`albums/${id}`, {
            method: "DELETE"
        })
        onDelete(id)
    }

    return (
        <div className={!displayProfile? "profile" : "profile-display"} key={id}>
            <button onClick={() => setDisplayProfile(!displayProfile)}>
                {!displayProfile ? "Click to expand" : "Click to collapse"}
            </button>
            <h3>{name} ({year_released})</h3>
            <br/>
            <button onClick={()=>setDisplayUpdate(!displayUpdate)}>
                {!displayUpdate ? "Click to update album" : "Click to collapse form to update album"}
            </button>
            {!displayUpdate ? null : <UpdateAlbum id={id} album={album} onUpdate={onUpdate}/>}
            <br />
            <button onClick={() => setDisplayAddSong(!displayAddSong)}>
                {!displayAddSong ? "Click to add a new song" : "Click to collapse form to add a new song"}
            </button>
            {!displayAddSong ? null: <AddSong albumId={id} artistId={artists[0].id} setSongs={addSong} />}
            <br />
            <button onClick={()=>setWantToDelete(!wantToDelete)}>
                {!wantToDelete ? "Do you want to delete this album?" : "Click if you want to keep this album"}               
            </button>
            {!wantToDelete ? null : <button onClick={()=>deleteAlbum(id)}>Delete Album</button>}
            <br/>
            {!displayProfile ? null : 
            (<section>
                <p>Artist(s):</p>
                <ul>
                    {artists.map(artist => <p key={artist.id}>{artist.name}</p>)} 
                </ul>
                <p>Genre: {genre}</p>
                <br/>
                <img className="profile-image" src={album_cover_url} alt={name}/>
                <h2>Songs</h2>
                <ul>
                    {songs.map(song => <ArtistAlbumSongsDisplay key={song.id} song={song} />)}
                </ul>
            </section>)}
        </div>
    )
}

export default AlbumDisplay