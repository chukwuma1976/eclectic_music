import React from 'react'

function ArtistAlbumDisplay({album}) {
  const {name, year_released, songs} = album
  return (
    <div className='artist-album'>
        <h3>{name} ({year_released})</h3>
        <h4>Songs</h4>
        <div>
          {songs.map(song => <p key={song.id}> {song.name}</p>)}
        </div>
    </div>
  )
}

export default ArtistAlbumDisplay