import React, {useState, useEffect} from 'react'
import MemberDisplay from './MemberDisplay';
import FilterByName from './FilterByName';

function DisplayMembers() {
    const [members, setMembers] = useState([])
    const [name, setName] = useState("")
    const [artist, setArtist] = useState("")
    const [genre, setGenre] = useState("")

    useEffect(() => {
        fetch("/members")
        .then(res => res.json())
        .then(members => {setMembers(members)})
      }, []);

    function onUpdate(updatedMember){
        const updatedMembers = members.map(member => {
            if (member.id === updatedMember.id){
                return updatedMember
            } else return member
        })
        setMembers(updatedMembers)
    }

    function onDelete(id){
        setMembers(members.filter(member => member.id !== id))
    }

    const filteredByGenre = members.filter(member=>member.artists[0].genre.toLowerCase().includes(genre.toLowerCase()))
    const filteredByArtist = filteredByGenre.filter(member=>member.artists[0].name.toLowerCase().includes(artist.toLowerCase()))
    const filteredMembers = filteredByArtist.filter(member => member.name.toLowerCase().includes(name.toLowerCase()))

    return (
        <div>
            <h1>Members</h1>
<<<<<<< HEAD
            <h3>Total number of members: {members.length}</h3>
            <div className="filtering-form">
                <FilterByName category={"name"} handleFilterByName={setName} />
                <FilterByName category={"artist"} handleFilterByName={setArtist}/>
                <FilterByName category={"genre"} handleFilterByName={setGenre}/>
            </div>
=======
            <FilterByName category={"name"} handleFilterByName={setName} />
            <FilterByName category={"artist"} handleFilterByName={setArtist}/>
            <FilterByName category={"genre"} handleFilterByName={setGenre}/>
>>>>>>> 21ff6903f350e670d3c813f55e82810ffc271f75
            {filteredMembers.map(member => <MemberDisplay key={member.id} member={member} onUpdate={onUpdate} onDelete={onDelete} />)}
        </div>
    )
}

export default DisplayMembers