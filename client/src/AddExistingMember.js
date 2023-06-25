import React, {useState, useContext} from 'react'
import FilterByName from './FilterByName'
import { UserContext } from './User'

function AddExistingMember({addMember, artistId, setDisplayAddMember}) {
    const {members, resetMembers} = useContext(UserContext)
    const [memberName, setMemberName] = useState("")
    const [errors, setErrors] = useState(null)
    const [memberId, setMemberId] = useState(null)

    function handleChange(event){
        setMemberId(event.target.value)
    }
    function handleSubmit(event){
        event.preventDefault()
        fetch(`/add_existing_member_to_artist`, {
            method: 'POST',
            headers: {"Content-Type": "application/json"},
            body: JSON.stringify({
                artist_id: artistId,
                member_id: memberId       
            })
        })
       .then ((res)=>{
            if (res.ok) {
                res.json().then(member=>{
                    addMember(member)
                    resetMembers()
                    setDisplayAddMember(false)
                })
            } else {res.json().then(data=>setErrors(data.errors))}
            })
    }
    const options = members.filter(member => member.name.toLowerCase().includes(memberName))
    const optionsList = options.map(member => 
        <option key={member.id} value={member.id}>
            {member.name}
        </option>
        )

    return (
        <div className="form">
            <h4>Add a Member by entering the information below</h4>
            <FilterByName category={"name"} handleFilterByName={setMemberName}/>
            {errors ? errors.map(error => <p>{error}</p>) : null}
            <form onSubmit={handleSubmit}>             
                <label>Select a member</label>
                <select onChange={handleChange}>
                    <option></option>
                    {optionsList}
                </select>
                <br/>
                <button type="submit">Submit</button>
            </form>
        </div>
    )
}

export default AddExistingMember