import React, {useState, useEffect} from 'react'
import MemberDisplay from './MemberDisplay';
import FilterByName from './FilterByName';

function DisplayMembers() {
    const [members, setMembers] = useState([])
    const [name, setName] = useState("")

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

    const filteredMembers = members.filter(member => member.name.toLowerCase().includes(name.toLowerCase()))

    return (
        <div>
            <h1>Members</h1>
            <FilterByName handleFilterByName={setName} />
            {filteredMembers.map(member => <MemberDisplay key={member.id} member={member} onUpdate={onUpdate} />)}
        </div>
    )
}

export default DisplayMembers