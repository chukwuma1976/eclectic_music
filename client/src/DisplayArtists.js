import React, {useState, useContext} from 'react'
import ArtistDisplay from './ArtistDisplay'
import FilterByName from './FilterByName';
import AddArtist from './AddArtist';
import FilterSoloArtist from './FilterSoloArtist';
import { UserContext } from './User';

function DisplayArtists() {
    const {artists, setArtists} = useContext(UserContext)

    const [name, setName] = useState('')
    const [showAdd, setShowAdd] = useState(false)
    const [genre, setGenre] = useState("")
    const [displaySolo, setDisplaySolo] = useState(false)

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
    const soloArtists = artists.filter(artist => {
        if (displaySolo) return artist.is_solo_artist
            else return artist
    })
    const filteredByGenre = soloArtists.filter(artist => artist.genre.toLowerCase().includes(genre.toLowerCase()))
    const filteredArtists = filteredByGenre.filter(artist => artist.name.toLowerCase().includes(name.toLowerCase()))

    return (
        <div>
            <h1>Artists</h1>
            <h3>Total Artists: {artists.length} || Displayed Artists: {filteredArtists.length}</h3>
            <div className='filtering-form'>
                <FilterByName category={"name"} handleFilterByName={setName}/>
                <FilterByName category={"genre"} handleFilterByName={setGenre}/>
                <FilterSoloArtist setDisplaySolo={setDisplaySolo} />

            </div>
            <div className='album-add-button'>
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