import React, {useState} from 'react'

function UpdateArtist({id, artist, setArtist}) {
<<<<<<< HEAD
    const [errors, setErrors] = useState(null)
=======
>>>>>>> 21ff6903f350e670d3c813f55e82810ffc271f75

    const [name, setName] = useState(artist.name)
    const [genre, setGenre] = useState(artist.genre)
    const [dateEstablished, setDateEstablished] = useState(artist.date_established)
    const [interestingFact, setInterestingFact] = useState(artist.interesting_fact)
    const [artistImageUrl, setArtistImageUrl] = useState(artist.artist_image_url)

    const newArtist = {
        name, 
        genre, 
        date_established: dateEstablished, 
        interesting_fact: interestingFact, 
        artist_image_url: artistImageUrl
    }

    function handleSubmit(event){
        event.preventDefault()
        console.log(newArtist)

        fetch(`/artists/${id}`, {
            method: "PATCH",
            headers: {"Content-Type": "application/json"},
            body: JSON.stringify(newArtist)
            })
<<<<<<< HEAD
        .then ((res)=>{
            if (res.ok) {
                res.json().then(artist=>setArtist(artist))
            } else {
                res.json().then(data=>
                    setErrors(Object.entries(data.errors).map(error=>`${error[0]} ${error[1]}`)))
                }
            })
                // .then(res=>res.json())
                // .then(artist=>setArtist(artist))     
=======
                .then(res=>res.json())
                .then(artist=>setArtist(artist))     
>>>>>>> 21ff6903f350e670d3c813f55e82810ffc271f75
    }
    return (
        <div className='form'>
            <h3>Update an Artist by entering the information below</h3>
            {errors ? errors.map(error => <p>{error}</p>) : null}
            <form onSubmit={handleSubmit}>
                <br/>                
                <label>Artist name </label>
                <input 
                    type="text" 
                    name="name" 
                    placeholder={"name"} 
                    value={name} 
                    onChange={(event)=>setName(event.target.value)} 
                />
                <br/>
                <label>Genre </label>
                <input 
                    type="text" 
                    name="genre" 
                    placeholder="genre" 
                    value={genre} 
                    onChange={(event)=>setGenre(event.target.value)}
                />
                <br/>
                <label>Date established </label>
                <input 
                    type="text" 
                    name="date_established" 
                    placeholder="date_established" 
                    value={dateEstablished} 
                    onChange={(event)=>setDateEstablished(event.target.value)}
                />
                <br/>
                <label>Interesting fact about artist</label>
                <input 
                    type="text" 
                    name="interesting_fact" 
                    placeholder="interesting_fact" 
                    value={interestingFact} 
                    onChange={(event)=>setInterestingFact(event.target.value)}
                />
                <br/>
                <label>Image URL </label>
                <input 
                    type="text" 
                    name="artist_image_url" 
                    placeholder="artist_image_url" 
                    value={artistImageUrl} 
                    onChange={(event)=>setArtistImageUrl(event.target.value)}
                />
                <br/>
                <button type="submit">Submit</button>
            </form>
        </div>
    )
}

export default UpdateArtist