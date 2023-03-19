import React, {useState} from 'react'

function UpdateSong({id, song, onUpdate}) {
    const [newSong, setNewSong] = useState({name: song.name})
    const {name} = newSong

    function handleChange(event){
        setNewSong(newSong=>({...newSong, [event.target.name]:event.target.value}))
    }
    function handleSubmit(event){
        event.preventDefault()
        console.log(newSong)

        // fetch("/songs/id", {
        //         method: "PATCH",
        //         headers: {"Content-Type": "application/json"},
        //         body: JSON.stringify(newSong)
        //     })
        //     .then(res=>res.json())
        //     .then(song=>onUpdate(song))     
    }
    return (
        <div>
            <h3>Update a Song by entering the information below</h3>
            <form onSubmit={handleSubmit}>          
                <label>Song name </label>
                <input 
                    type="text" 
                    name="name" 
                    placeholder="name" 
                    value={name} 
                    onChange={handleChange} 
                />
                <button type="submit">Submit</button>
            </form>
        </div>
    )
}

export default UpdateSong