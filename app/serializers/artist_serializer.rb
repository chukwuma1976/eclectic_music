class ArtistSerializer < ActiveModel::Serializer
  attributes :id, :name, :genre, :date_established, :interesting_fact, :artist_image_url, 
  :user_id, :albums, :number_of_members, :number_of_albums

  def albums
    albums=self.object.albums.uniq
    albums.map do |album| 
      songs=album.songs.map {|song| 
        {id: song.id, name: song.name, artist_id: song.artist_id, album_id: song.album_id}}
      {
        id: album.id, 
        name: album.name, 
        year_released: album.year_released, 
        album_cover_url: album.album_cover_url, 
        songs: songs
      }
    end
  end

  def number_of_members
    self.object.members.count
  end

  def number_of_albums
    self.object.albums.count
  end

  has_many :members
  
end
