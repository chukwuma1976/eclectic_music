import React, {useState, useContext} from 'react'
import { UserContext } from './User'

function AddMember({addMember, artistId, setDisplayAddMember}) {
    const {members, setMembers, resetMembers} = useContext(UserContext)
    const [errors, setErrors] = useState(null)
    const [newMember, setNewMember] = useState({
        name: "",
        image_url: ""
    })
    const {name, image_url} = newMember

    function handleChange(event){
        setNewMember(newMember=>({...newMember, [event.target.name]:event.target.value}))
    }
    function handleSubmit(event){
        event.preventDefault()

        fetch(`/artists/${artistId}/members`, {
                method: "POST",
                headers: {"Content-Type": "application/json"},
                body: JSON.stringify(newMember)
            })
       .then ((res)=>{
            if (res.ok) {
                res.json().then(member=>{
                    addMember(member)
                    // setMembers([...members, member])
                    resetMembers()
                    setDisplayAddMember(false)
                })
            } else {res.json().then(data=>setErrors(data.errors))}
            })
    }

    return (
        <div className="form">
            <h4>Add a Member by entering the information below</h4>
            {errors ? errors.map(error => <p>{error}</p>) : null}
            <form onSubmit={handleSubmit}>
                <br/>                
                <label>Member name </label>
                <input 
                    type="text" 
                    name="name" 
                    placeholder="name" 
                    value={name} 
                    onChange={handleChange} 
                />
                <br/>
                <label>Member Image URL </label>
                <input 
                    type="text" 
                    name="image_url" 
                    placeholder="image_url" 
                    value={image_url} 
                    onChange={handleChange}
                />
                <br/>
                <button type="submit">Submit</button>
            </form>
        </div>
    )
}

export default AddMember