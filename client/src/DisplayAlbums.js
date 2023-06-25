import React, {useState, useContext} from 'react'
import AlbumDisplay from './AlbumDisplay';
import FilterByName from './FilterByName';
import { UserContext } from './User';

function DisplayAlbums() {
    const { albums, setAlbums, resetSongs, resetArtists} = useContext(UserContext)
    const [name, setName] = useState('')
    const [artist, setArtist] = useState('')
    const [genre, setGenre] = useState("")

    function addSongToAlbum(id, songList){
        const updatedAlbum = albums.find(album=>album.id === id)
        updatedAlbum.songs = songList
        onUpdate(updatedAlbum)
    }
    function onUpdate(updatedAlbum){
        const albumWithUpdate = albums.map(album => {
            if (album.id === updatedAlbum.id) {
                return updatedAlbum
            } else return album
        })
        setAlbums(albumWithUpdate)
        resetArtists()
        resetSongs()
    }

    function onDelete(id){
        setAlbums(albums.filter(album=>album.id !== id))
        resetSongs()
        resetArtists()
    }
    const filteredByGenre = albums.filter(album=>album.genre.toLowerCase().includes(genre.toLowerCase()))
    const filteredByArtist = filteredByGenre.filter(album=>album.artists[0].name.toLowerCase().includes(artist.toLowerCase()))
    const filteredAlbums = filteredByArtist.filter(album => album.name.toLowerCase().includes(name.toLowerCase()));
    
    return (
        <div>
            <h1>Albums</h1>
            <h3>Total albums: {albums.length}  ||  Displayed albums: {filteredAlbums.length}</h3>
            <div className='filtering-form'>
                <FilterByName category={"name"}handleFilterByName={setName}/>
                <FilterByName category={"artist"} handleFilterByName={setArtist}/>
                <FilterByName category={"genre"} handleFilterByName={setGenre}/>
            </div>
            {filteredAlbums.map(album => 
                <AlbumDisplay key={album.id} album={album} onUpdate={onUpdate} addSongToAlbum={addSongToAlbum} onDelete={onDelete} />)}
        </div>
    )
}

export default DisplayAlbums