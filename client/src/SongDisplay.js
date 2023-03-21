import React, {useState} from 'react'
import UpdateSong from './UpdateSong'

function SongDisplay({song, onUpdate, onDelete}) {
    const {id, name, artist_name, genre, release_date, album_name} = song
    const [displayUpdate, setDisplayUpdate] = useState(false)
    const [wantToDelete, setWantToDelete] = useState(false)

    function deleteSong(id){
      fetch(`/songs/${id}`, {
          method: "DELETE"
      })
      console.log(song, id)
      onDelete(id)
    }

  return (
    <div className="profile">
        <h3>{name}</h3>
        <p>Genre: {genre}</p>
        <p>This song was released in {release_date} by {artist_name} from the album {album_name}.</p>   
        <button onClick={()=>setDisplayUpdate(!displayUpdate)}>
          {!displayUpdate ? "Click to update this songs name" : "Click to hide update form"}
        </button>
        {!displayUpdate ? null : <UpdateSong id={id} song={song} onUpdate={onUpdate} />}
        <button onClick={()=>setWantToDelete(!wantToDelete)}>
          {!wantToDelete ? "Do you want to delete this song?" : "Click if you want to keep this song"}               
        </button>
        {!wantToDelete ? null : <button onClick={()=>deleteSong(id)}>Delete Song</button>}
        <br/>
    </div>
  )
}

export default SongDisplay