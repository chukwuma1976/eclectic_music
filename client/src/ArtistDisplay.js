import React, {useState} from 'react'
import AddAlbum from './AddAlbum';
import AddMember from './AddMember';
import UpdateArtist from './UpdateArtist';
import ArtistAlbumDisplay from './ArtistAlbumDisplay';
import ArtistMemberDisplay from './ArtistMemberDisplay';

function ArtistDisplay({artist, updateArtist, onDelete}) {
    const {id, name, genre, date_established, interesting_fact, 
        artist_image_url, albums, members, number_of_members} = artist
    const [displayProfile, setDisplayProfile] = useState(false)
    const [displayAddAlbum, setDisplayAddAlbum] = useState(false)
    const [artistAlbums, setArtistAlbums] = useState(albums)
    const [displayAddMember, setDisplayAddMember] = useState(false)
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
    }

    return (
        <div className={!displayProfile? "profile" : "profile-display"} key={id}>
            <button onClick={() => setDisplayProfile(!displayProfile)}>
                {!displayProfile ? "Click to expand" : "Click to collapse"}
            </button>            
            <h1>{name}</h1>
            <p>Genre: {genre}</p>
            <img className="profile-image" src={artist_image_url} alt={name}/>
            <br/>
            <button onClick={()=>setDisplayUpdate(!displayUpdate)}>
                {!displayUpdate ? "Click to update this artist" : "Click to hide form to update this artist"}
            </button>
            {!displayUpdate ? null : <UpdateArtist id={id} artist={artist} setArtist={updateArtist}/>}
            <br/>
            <button onClick={()=>setDisplayAddAlbum(!displayAddAlbum)}>
                {!displayAddAlbum ? "Click to add an album" : "Click to hide form to add album"}
            </button>
            {!displayAddAlbum ? null : <AddAlbum setAlbums={addAlbum} artist_id={id}/>}
            <br/>
            <button onClick={()=>setDisplayAddMember(!displayAddMember)}>
                {!displayAddMember ? "Click to add a member" : "Click to hide form to add member"}
            </button>
            {!displayAddMember ? null : <AddMember setMembers={addMember} artistId={id} />}
            <br/>
            <button onClick={()=>setWantToDelete(!wantToDelete)}>
                {!wantToDelete ? "Do you want to delete this artist?" : "Click if you want to keep this artist"}               
            </button>
            {!wantToDelete ? null : <button onClick={()=>deleteArtist(id)}>Delete Artist</button>}
            <br/>
            {!displayProfile ? null : 
            (<section>
                <p>Established: {date_established}</p>
                <p>Fact: {interesting_fact}</p>
                <h2>Albums</h2>
                <ul>
                    {artist.albums.map(album => <ArtistAlbumDisplay key={album.id} album={album}/>)}
                </ul>
                <h2>Members ({number_of_members}) </h2>
                <ul>
                    {artist.members.map(member => <ArtistMemberDisplay key={member.id} member={member}/>)} 
                </ul>
            </section>)}
        </div>
    )
}

export default ArtistDisplay