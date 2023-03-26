import React, {useState, useEffect} from 'react'
import AlbumDisplay from './AlbumDisplay';
import FilterByName from './FilterByName';

function DisplayAlbums() {
    const [albums, setAlbums] = useState([]);
    const [name, setName] = useState('')
    const [artist, setArtist] = useState('')
    const [genre, setGenre] = useState("")

    useEffect(() => {
        fetch("/albums")
        .then(res => res.json())
        .then(albums => {setAlbums(albums)})
      }, []);  

    function addSongToAlbum(id, songList){
        const updatedAlbum = albums.find(album=>album.id === id)
        updatedAlbum.songs = songList
        onUpdate(updatedAlbum)
    }
    function onUpdate(updatedAlbum){
        console.log(updatedAlbum)
        const albumWithUpdate = albums.map(album => {
            if (album.id === updatedAlbum.id) {
                return updatedAlbum
            } else return album
        })
        setAlbums(albumWithUpdate)
    }

    function onDelete(id){
        setAlbums(albums.filter(album=>album.id !== id))
    }
    const filteredByGenre = albums.filter(album=>album.genre.toLowerCase().includes(genre.toLowerCase()))
    const filteredByArtist = filteredByGenre.filter(album=>album.artists[0].name.toLowerCase().includes(artist.toLowerCase()))
    const filteredAlbums = filteredByArtist.filter(album => album.name.toLowerCase().includes(name.toLowerCase()));

    return (
        <div>
            <h1>Albums</h1>
            <h3>Total albums: {albums.length}</h3>
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