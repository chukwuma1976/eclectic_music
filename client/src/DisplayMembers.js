import React, {useState, useContext} from 'react'
import MemberDisplay from './MemberDisplay';
import FilterByName from './FilterByName';
import { UserContext } from './User';

function DisplayMembers() {
    const {members, setMembers, resetArtists} = useContext(UserContext)
    const [name, setName] = useState("")
    const [artist, setArtist] = useState("")
    const [genre, setGenre] = useState("")

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
        resetArtists()
    }

    function findMatch(array, attribute, filter){
        const match = array.find(element=> element[attribute].toLowerCase().includes(filter.toLowerCase()))
        return !!match
    }
    
    const filteredByGenre = members.filter(member=> findMatch(member.artists, "genre", genre))
    const filteredByArtist = filteredByGenre.filter(member=> findMatch(member.artists, "name", artist))
    const filteredMembers = filteredByArtist.filter(member => member.name.toLowerCase().includes(name.toLowerCase()))

    return (
        <div>
            <h1>Members</h1>
            <h3>Total members: {members.length}  ||  Dislayed members: {filteredMembers.length}</h3>
            <div className="filtering-form">
                <FilterByName category={"name"} handleFilterByName={setName} />
                <FilterByName category={"artist"} handleFilterByName={setArtist}/>
                <FilterByName category={"genre"} handleFilterByName={setGenre}/>
            </div>
            {filteredMembers.map(member => <MemberDisplay key={member.id} member={member} onUpdate={onUpdate} onDelete={onDelete} />)}
        </div>
    )
}

export default DisplayMembers