import React from 'react'

function UpdateArtist({id, artist, setArtist}) {
    const [newArtist, setNewArtist] = useState({
        name: artist.name,
        genre: artist.genre,
        date_established: artist.date_established,
        interesting_fact: artist.interesting_fact,
        arist_image_url: artist.arist_image_url
    })
    const {name, genre, date_established, interesting_fact, arist_image_url} = newArtist

    function handleChange(event){
        setNewArtist(newArtist=>({...newArtist, [event.target.name]:event.target.value}))
    }
    function handleSubmit(event){
        event.preventDefault()
        console.log(newArtist)

    //     fetch("/artists/id", {
    //             method: "PATCH",
    //             headers: {"Content-Type": "application/json"},
    //             body: JSON.stringify(newArtist)
    //         })
    //         .then(res=>res.json())
    //         .then(artist=>setArtists([...artists, artist]))     
    }
    return (
        <div>
            <h3>Update an Artist by entering the information below</h3>
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

export default UpdateArtist