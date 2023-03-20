import React, {useState} from 'react'

function AddMember({setMembers, artistId}) {
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
        console.log(newMember)

        fetch("/members", {
                method: "POST",
                headers: {"Content-Type": "application/json"},
                body: JSON.stringify(newMember)
            })
            .then(res=>res.json())
            .then(member=>{
                setMembers(member)
                linkToArtist(member.id)
            })  
    }
    function linkToArtist(memberId){
        fetch("/artist_members", {
            method: "POST",
            headers: {"Content-Type": "application/json"},
            body: JSON.stringify({
                artist_id: artistId, 
                member_id: memberId
            })
        }).then(res=>res.json())
        .then(data=>console.log(data))
    }

    return (
        <div>
            <h3>Add a Member by entering the information below</h3>
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