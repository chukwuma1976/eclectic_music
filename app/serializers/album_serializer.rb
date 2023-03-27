class AlbumSerializer < ActiveModel::Serializer
  attributes :id, :name, :year_released, :album_cover_url, :artists, :genre

  def artists
    artists=self.object.artists.uniq
    artists.map { |artist| {id: artist.id, name: artist.name} }
  end

  def genre
    self.object.artists.uniq.map { |artist| artist.genre }.first
  end

  has_many :songs, serializer: AlbumSongsSerializer
end
