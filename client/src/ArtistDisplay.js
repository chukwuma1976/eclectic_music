import React, {useState, useContext} from 'react'
import AddAlbum from './AddAlbum';
import AddMember from './AddMember';
import AddExistingMember from './AddExistingMember';
import UpdateArtist from './UpdateArtist';
import ArtistAlbumDisplay from './ArtistAlbumDisplay';
import {NavLink} from 'react-router-dom';
import { UserContext } from './User';

function ArtistDisplay({artist, updateArtist, onDelete}) {
    const {resetAll} = useContext(UserContext)
    const {id, name, genre, date_established, interesting_fact, 
        artist_image_url, albums, members, number_of_members} = artist
    const [displayProfile, setDisplayProfile] = useState(false)
    const [displayAddAlbum, setDisplayAddAlbum] = useState(false)
    const [artistAlbums, setArtistAlbums] = useState(albums)
    const [displayAddMember, setDisplayAddMember] = useState(false)
    const [displayAddExistingMember, setDisplayAddExistingMember] = useState(false)
    const [artistMembers, setArtistMembers] = useState([...members])
    const [displayUpdate, setDisplayUpdate] = useState(false)
    const [wantToDelete, setWantToDelete] = useState(false)

    function addAlbum(album){
        setArtistAlbums([...artistAlbums, album])
        const newAlbumList = [...artistAlbums, album]
        const updatedArtist = {...artist, albums: newAlbumList}
        updateArtist(updatedArtist)
    }

    function addMember(member){
        setArtistMembers([...artistMembers, member])
        const newMembers = [...artistMembers, member]
        const updatedArtist = {...artist, members: newMembers, number_of_members: newMembers.length}
        updateArtist(updatedArtist)
    }

    function deleteArtist(id){
        fetch(`/artists/${id}`, {
            method: "DELETE"
        })
        onDelete(id)
        resetAll()
    }

    return (
        <div className={!displayProfile? "profile" : "profile-display"} key={id}>
            <button onClick={() => setDisplayProfile(!displayProfile)}>
                {!displayProfile ? "Click to expand" : "Click to collapse"}
            </button>            
            <h1>{name}</h1>
            <h4>Genre: {genre} || Date established {date_established}</h4>
            <img className={!displayProfile? "profile-image" : "enlarged-image"} src={artist_image_url} alt={name}/>
            <br/>
            <button className={!displayUpdate ? "" : "button-clicked"} onClick={()=>setDisplayUpdate(!displayUpdate)}>
                {!displayUpdate ? "Click to update this artist" : "Click to hide form to update this artist"}
            </button>
            {!displayUpdate ? 
                null : <UpdateArtist id={id} artist={artist} setArtist={updateArtist} setDisplayUpdate={setDisplayUpdate}/>}
            <br/>
            <button className={!displayAddAlbum ? "" : "button-clicked"} onClick={()=>setDisplayAddAlbum(!displayAddAlbum)}>
                {!displayAddAlbum ? "Click to add an album" : "Click to hide form to add album"}
            </button>
            {!displayAddAlbum ? 
                null : <AddAlbum addAlbum={addAlbum} artistId={id} setDisplayAddAlbum={setDisplayAddAlbum}/>}
            <br/>
            <button className={!displayAddMember ? "" : "button-clicked"} onClick={()=>setDisplayAddMember(!displayAddMember)}>
                {!displayAddMember ? "Click to add a new member" : "Click to hide form to add new member"}
            </button>
            {!displayAddMember ? 
                null : <AddMember addMember={addMember} artistId={id} setDisplayAddMember={setDisplayAddMember}/>}
            <br/>
            <button className={!displayAddExistingMember ? "" : "button-clicked"} onClick={()=>setDisplayAddExistingMember(!displayAddExistingMember)}>
                {!displayAddExistingMember ? "Click to add an existing member" : "Click to hide form to add an existing member"}
            </button>
            {!displayAddExistingMember ? 
                null : <AddExistingMember addMember={addMember} artistId={id} setDisplayAddMember={setDisplayAddExistingMember}/>}
            <br/>
            <button className={!wantToDelete ? "" : "button-clicked"} onClick={()=>setWantToDelete(!wantToDelete)}>
                {!wantToDelete ? "Do you want to delete this artist?" : "Click if you want to keep this artist"}               
            </button>
            {!wantToDelete ? null : <button onClick={()=>deleteArtist(id)}>Delete Artist</button>}
            <br/>
            {!displayProfile ? null : 
            (<section>
                <h4 className='text-box'>{interesting_fact}</h4>
                <body className='albums-container'>
                    <h3>Members ({number_of_members}) </h3>
                    <div className='artist-container'>
                        {artist.members.map(member => <p key={member.id}>{member.name}</p>)} 
                    </div>
                </body>
                <body className='albums-container'>
                    <h3>Albums ({artist.albums.length})</h3>
                    <ul>
                        {artist.albums.map(album => <ArtistAlbumDisplay key={album.id} album={album}/>)}
                    </ul>
                </body>
                <br/>
                <div className='redirect'>
                    <NavLink to="/albums_" style={{color: 'blue'}}>
                        Edit, Update Album, Add Songs |   |
                    </NavLink>              
                    <NavLink to="/songs_" style={{color: 'blue'}}>
                        Edit and Delete Songs |   |
                    </NavLink>               
                    <NavLink to="/members_" style={{color: 'blue'}}>
                        Edit and Delete Members {"    "}
                    </NavLink>
                </div>
            </section>)}
        </div>
    )
}

export default ArtistDisplay