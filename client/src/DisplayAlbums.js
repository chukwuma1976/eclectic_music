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

    const filteredAlbums = albums.filter(album => album.name.toLowerCase().includes(name.toLowerCase()));

    return (
        <div>
            <h1>Albums</h1>
            <FilterByName handleFilterByName={setName}/>
            {filteredAlbums.map(album => 
                <AlbumDisplay key={album.id} album={album} onUpdate={onUpdate} addSongToAlbum={addSongToAlbum} onDelete={onDelete} />)}
        </div>
    )
}

export default DisplayAlbums