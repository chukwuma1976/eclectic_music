import React from 'react'
import ArtistAlbumSongsDisplay from './ArtistAlbumSongsDisplay'

function ArtistAlbumDisplay({album}) {
  const {name, year_released, songs} = album
  return (
    <div>
        <h3>{name} ({year_released})</h3>
        <h4>Songs</h4>
        <ul>
          {songs.map(song => <ArtistAlbumSongsDisplay key={song.id} song={song}/>)}
        </ul>
    </div>
  )
}

export default ArtistAlbumDisplay