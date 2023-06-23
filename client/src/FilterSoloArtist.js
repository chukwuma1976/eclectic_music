import React from 'react'

function FilterSoloArtist({setDisplaySolo}) {
    return (
        <div>
            <p>
                <label>Display Solo Artists</label>
                <input type="radio" name="Solo" onChange={()=>{setDisplaySolo(true)}} /> Yes
                <input type="radio" name="Solo" onChange={()=>{setDisplaySolo(false)}} /> No
            </p>
        </div>
  )
}

export default FilterSoloArtist