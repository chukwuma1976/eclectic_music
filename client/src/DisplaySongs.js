import React, {useEffect, useState} from 'react'
import SongDisplay from './SongDisplay';
import FilterByName from './FilterByName';

function DisplaySongs() {
    const [songs, setSongs] = useState([])
    const [name, setName] = useState("")

    useEffect(() => {
        fetch("/songs")
        .then(res => res.json())
        .then(songs => {setSongs(songs)})
      }, []); 

    function onUpdate(updatedSong){
        const updatedSongs = songs.map(song => {
            if (song.id === updatedSong.id){
                return updatedSong;
            } else return song
        })
        setSongs(updatedSongs)
    }

    const filteredSongs = songs.filter(song => song.name.toLowerCase().includes(name.toLowerCase()))

    return (
        <div>
            <h1>Songs</h1>
            <FilterByName handleFilterByName={setName} />
            {filteredSongs.map(song => <SongDisplay key={song.id} song={song} onUpdate={onUpdate} />)}
        </div>
    )
}

export default DisplaySongs