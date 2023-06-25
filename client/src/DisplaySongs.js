import React, {useState, useContext} from 'react'
import SongDisplay from './SongDisplay';
import FilterByName from './FilterByName';
import { UserContext } from './User';

function DisplaySongs() {
    const {songs, setSongs, resetAlbums, resetArtists} = useContext(UserContext)
    const [name, setName] = useState("")
    const [artist, setArtist] = useState("")
    const [genre, setGenre] = useState("")

    function onUpdate(updatedSong){
        const updatedSongs = songs.map(song => {
            if (song.id === updatedSong.id){
                return updatedSong;
            } else return song
        })
        setSongs(updatedSongs)
        resetAlbums()
        resetArtists()
    }

    function onDelete(id){
        setSongs(songs.filter(song => song.id !== id))
        resetAlbums()
        resetArtists()
    }

    const filteredByGenre = songs.filter(song =>song.genre.toLowerCase().includes(genre.toLowerCase()))
    const filteredByArtist = filteredByGenre.filter(song=>song.artist_name.toLowerCase().includes(artist.toLowerCase()))
    const filteredSongs = filteredByArtist.filter(song => song.name.toLowerCase().includes(name.toLowerCase()))

    return (
        <div>
            <h1>Songs</h1>
            <h3>Total songs: {songs.length}  || Displayed songs: {filteredSongs.length}</h3>
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