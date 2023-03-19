import React, {useState, useEffect} from 'react'
import AlbumDisplay from './AlbumDisplay';
import FilterByName from './FilterByName';

function DisplayAlbums() {
    const [albums, setAlbums] = useState([]);
    const [name, setName] = useState('')
    useEffect(() => {
        fetch("/albums")
        .then(res => res.json())
        .then(albums => {setAlbums(albums)})
      }, []);  

    function addSongToAlbum(id, songList){
        console.log(songList)
        const albumsWithNewSong= albums.map(album => {
            if (album.id === id){
                album.songs = [...songList]
            } else return album
        })   
        setAlbums(albumsWithNewSong);
    }
    function onUpdate(updatedAlbum){
        console.log(updatedAlbum)
        const albumWithUpdate = albums.map(album => {
            if (album.id === updatedAlbum.id) {
                album = updatedAlbum
            } else return album
        })
        setAlbums(albumWithUpdate)
    }

    const filteredAlbums = albums.filter(album => album.name.toLowerCase().includes(name.toLowerCase()));

    return (
        <div>
            <h1>Albums</h1>
            <FilterByName handleFilterByName={setName}/>
            {filteredAlbums.map(album => 
                <AlbumDisplay key={album.id} album={album} onUpdate={onUpdate} addSongToAlbum={addSongToAlbum}/>)}
        </div>
    )
}

export default DisplayAlbums