import React, {useState, useEffect} from 'react'
import ArtistDisplay from './ArtistDisplay'
import FilterByName from './FilterByName';
import AddArtist from './AddArtist';

function DisplayArtists() {
    const [artists, setArtists] = useState([])
    const [name, setName] = useState('')
    const [showAdd, setShowAdd] = useState(false)

    useEffect(() => {
        fetch("/artists")
        .then(res => res.json())
        .then(artists => {setArtists(artists)})
      }, []);

    function updateArtist(updatedArtist){
        console.log(updatedArtist, updatedArtist.id)
        const updatedArtists = artists.map(artist => {
            if (artist.id===updatedArtist.id){
                return updatedArtist
            } else return artist
        })
        setArtists(updatedArtists)
    }

    function addAlbumToArtist(id, albumList){
        console.log(albumList)
        const artistsWithNewAlbum= artists.map(artist => {
            if (artist.id === id){
                artist.albums = [...albumList]
            } else return artist
        })   
        setArtists(artistsWithNewAlbum);
    }

    function addMemberToArtist(id, memberList){
        console.log(memberList)
        const artistsWithNewMember= artists.map(artist => {
            if (artist.id === id){
                artist.members = memberList
            } else return artist
        })   
        setArtists(artistsWithNewMember);
    }

    function onDelete(id){
        setArtists(artists.filter(artist => artist.id !== id));
    }

    // function filterbyUser(user){
    //     const usersArtists = artists.filter(artist => artist.user_id === user.id)
    //     setArtists(usersArtists)
    // }
    // filterbyUser(user)
    const filteredArtists=artists.filter(artist => artist.name.toLowerCase().includes(name.toLowerCase()))

    return (
        <div>
            <h1>Artists</h1>
            <FilterByName handleFilterByName={setName}/>
            <button onClick={() => setShowAdd(!showAdd)}>{!showAdd? "Click to Add Artist":"Click to Hide Form to Add Artist"}</button>
            {!showAdd? null:  <AddArtist artists={artists} setArtists={setArtists}/>}
            <br/>
            {filteredArtists.map(artist => 
                <ArtistDisplay 
                    key={artist.id} 
                    artist={artist} 
                    updateArtist={updateArtist}
                    addAlbumToArtist={addAlbumToArtist} 
                    addMemberToArtist={addMemberToArtist}
                    onDelete={onDelete}
                />
            )}
        </div>
        
    )
}

export default DisplayArtists