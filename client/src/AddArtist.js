import React, {useState} from 'react'

function AddArtist({artists, setArtists}) {
    const [errors, setErrors] = useState(null)
    const [newArtist, setNewArtist] = useState({
        name: "",
        genre: "",
        date_established: 0,
        interesting_fact: "",
        arist_image_url: "",
        user_id: 1
    })
    const {name, genre, date_established, interesting_fact, arist_image_url} = newArtist

    function handleChange(event){
        setNewArtist(newArtist=>({...newArtist, [event.target.name]:event.target.value}))
    }
    function handleSubmit(event){
        event.preventDefault()

        fetch("/artists", {
                method: "POST",
                headers: {"Content-Type": "application/json"},
                body: JSON.stringify(newArtist)
            })
        .then ((res)=>{
            if (res.ok) {
                res.json().then(artist=>setArtists([...artists, artist]))
            } else {
                res.json().then(data=>
                    setErrors(Object.entries(data.errors).map(error=>`${error[0]} ${error[1]}`)))
                }
            })            
    }
    return (
        <div className="form">
            <h3>Add an Artist by entering the information below</h3>
            {errors ? errors.map(error=><p>{error}</p>): null}
            <form onSubmit={handleSubmit}>
                <br/>                
                <label>Artist name </label>
                <input 
                    type="text" 
                    name="name" 
                    placeholder="name" 
                    value={name} 
                    onChange={handleChange} 
                />
                <br/>
                <label>Genre </label>
                <input 
                    type="text" 
                    name="genre" 
                    placeholder="genre" 
                    value={genre} 
                    onChange={handleChange}
                />
                <br/>
                <label>Date established </label>
                <input 
                    type="text" 
                    name="date_established" 
                    placeholder="date_established" 
                    value={date_established} 
                    onChange={handleChange}
                />
                <br/>
                <label>Interesting fact about artist</label>
                <input 
                    type="text" 
                    name="interesting_fact" 
                    placeholder="interesting_fact" 
                    value={interesting_fact} 
                    onChange={handleChange}
                />
                <br/>
                <label>Image URL </label>
                <input 
                    type="text" 
                    name="arist_image_url" 
                    placeholder="arist_image_url" 
                    value={arist_image_url} 
                    onChange={handleChange}
                />
                <br/>
                <button type="submit">Submit</button>
            </form>
        </div>
    )
}

export default AddArtist