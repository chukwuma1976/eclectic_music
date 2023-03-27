import React, {useState, useEffect} from 'react'
import ArtistDisplay from './ArtistDisplay'
import FilterByName from './FilterByName';
import AddArtist from './AddArtist';

function DisplayArtists() {
    const [artists, setArtists] = useState([])
    const [name, setName] = useState('')
    const [showAdd, setShowAdd] = useState(false)
    const [genre, setGenre] = useState("")

    useEffect(() => {
        fetch("/artists")
        .then(res => res.json())
        .then(artists => {setArtists(artists)})
      }, []);

    function updateArtist(updatedArtist){
        const updatedArtists = artists.map(artist => {
            if (artist.id===updatedArtist.id){
                return updatedArtist
            } else return artist
        })
        setArtists(updatedArtists)
    }

    function onDelete(id){
        setArtists(artists.filter(artist => artist.id !== id));
    }

    const filteredByGenre = artists.filter(artist => artist.genre.toLowerCase().includes(genre.toLowerCase()))
    const filteredArtists = filteredByGenre.filter(artist => artist.name.toLowerCase().includes(name.toLowerCase()))

    return (
        <div>
            <h1>Artists</h1>
            <h3>Total Artists: {artists.length}</h3>
            <div className='filtering-form'>
                <FilterByName category={"name"} handleFilterByName={setName}/>
                <FilterByName category={"genre"} handleFilterByName={setGenre}/>
                <button className={!showAdd ? "" : "button-clicked"}onClick={() => setShowAdd(!showAdd)}>
                    {!showAdd? "Click to Add Artist":"Click to Hide Form to Add Artist"}
                </button>
            </div>
            {!showAdd? null:  <AddArtist artists={artists} setArtists={setArtists} setShowAdd={setShowAdd}/>}
            <br/>
            {filteredArtists.map(artist => 
                <ArtistDisplay key={artist.id} artist={artist} updateArtist={updateArtist} onDelete={onDelete} />
            )}
        </div>
        
    )
}

export default DisplayArtists