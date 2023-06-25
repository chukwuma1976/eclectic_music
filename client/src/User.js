import React, {useState, useEffect} from 'react'

const UserContext = React.createContext()

function UserProvider({children}) {
    const [user, setUser] = useState(null)
    const [artists, setArtists] = useState([])
    const [albums, setAlbums] = useState([])
    const [members, setMembers] = useState([])
    const [songs, setSongs] = useState([])

    useEffect(()=>{
        fetch('/me')
        .then(res=>{
            if (res.ok){
                res.json().then(user=>setUser(user))
            }
        })
    }, [])

    useEffect(() => {
        fetch("/artists")
        .then(res => res.json())
        .then(artists => {setArtists(artists)})
    },[])

    useEffect(() => {
        fetch("/albums")
        .then(res => res.json())
        .then(albums => {setAlbums(albums)})
      }, []);  

    useEffect(() => {
        fetch("/members")
        .then(res => res.json())
        .then(members => {setMembers(members)})
      }, []);

    useEffect(() => {
        fetch("/songs")
        .then(res => res.json())
        .then(songs => {setSongs(songs)})
      }, []); 

    function resetArtists(artists) {
        fetch("/artists")
        .then(res => res.json())
        .then(artists => {setArtists(artists)}) 
    }

    function resetAlbums(){
        fetch("/albums")
        .then(res => res.json())
        .then(albums => {setAlbums(albums)})
    }

    function resetMembers(){
        fetch("/members")
        .then(res => res.json())
        .then(members => {setMembers(members)})
    }

    function resetSongs(){
        fetch("/songs")
        .then(res => res.json())
        .then(songs => {setSongs(songs)})
    }

    function resetAll(){
        fetch("/albums")
        .then(res => res.json())
        .then(albums => {setAlbums(albums)})

        fetch("/members")
        .then(res => res.json())
        .then(members => {setMembers(members)})

        fetch("/songs")
        .then(res => res.json())
        .then(songs => {setSongs(songs)})
    }

    return (
        <UserContext.Provider value={{
            user, setUser, 
            artists, setArtists, 
            albums, setAlbums, 
            members, setMembers, 
            songs, setSongs, 
            resetArtists, resetAlbums, resetMembers, resetSongs, resetAll
        }}>
            {children}
        </UserContext.Provider>
    )
}

export {UserContext, UserProvider}