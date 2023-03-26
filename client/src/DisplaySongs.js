import React, {useEffect, useState} from 'react'
import SongDisplay from './SongDisplay';
import FilterByName from './FilterByName';

function DisplaySongs() {
    const [songs, setSongs] = useState([])
    const [name, setName] = useState("")
    const [artist, setArtist] = useState("")
    const [genre, setGenre] = useState("")

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

    function onDelete(id){
        setSongs(songs.filter(song => song.id !== id))
    }

    const filteredByGenre = songs.filter(song =>song.genre.toLowerCase().includes(genre.toLowerCase()))
    const filteredByArtist = filteredByGenre.filter(song=>song.artist_name.toLowerCase().includes(artist.toLowerCase()))
    const filteredSongs = filteredByArtist.filter(song => song.name.toLowerCase().includes(name.toLowerCase()))

    return (
        <div>
            <h1>Songs</h1>
            <h3>Total songs: {songs.length}</h3>
            <div className='filtering-form'>
                <FilterByName category={"name"} handleFilterByName={setName} />
                <FilterByName category={"artist"} handleFilterByName={setArtist}/>
                <FilterByName category={"genre"} handleFilterByName={setGenre}/>
            </div>
            {filteredSongs.map(song => <SongDisplay key={song.id} song={song} onUpdate={onUpdate} onDelete={onDelete} />)}
        </div>
    )
}

export default DisplaySongs