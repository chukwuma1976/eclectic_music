import React, {useState} from 'react'

function UpdateMember({id, member, onUpdate}) {
    const [errors, setErrors] = useState(null)
    const [newMember, setNewMember] = useState({
        name: member.name,
        image_url: member.image_url
    })
    const {name, image_url} = newMember

    function handleChange(event){
        setNewMember(newMember=>({...newMember, [event.target.name]:event.target.value}))
    }
    function handleSubmit(event){
        event.preventDefault()
        console.log(newMember)

        fetch(`/members/${id}`, {
                method: "PATCH",
                headers: {"Content-Type": "application/json"},
                body: JSON.stringify(newMember)
            })
<<<<<<< HEAD
        .then ((res)=>{
            if (res.ok) {
                res.json().then(member=>onUpdate(member))
            } else {
                res.json().then(data=>
                    setErrors(Object.entries(data.errors).map(error=>`${error[0]} ${error[1]}`)))
                }
            })    
=======
            .then(res=>res.json())
            .then(member=>onUpdate(member))     
>>>>>>> 21ff6903f350e670d3c813f55e82810ffc271f75
    }
    return (
        <div className='form'>
            <h3>Update a Member by entering the information below</h3>
            {errors ? errors.map(error => <p>{errors}</p>) : null}
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

export default UpdateMember