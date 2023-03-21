class AlbumSerializer < ActiveModel::Serializer
  attributes :id, :name, :year_released, :album_cover_url, :artists, :genre, :user_id

  def artists
    artists=self.object.artists.uniq
    artists.map { |artist| {id: artist.id, name: artist.name} }
  end

  def genre
    self.object.artists.uniq.map { |artist| artist.genre }.first
  end

  def user_id
    if self.object.artists.first
      self.object.artists.first.user_id
    end
  end

  has_many :songs, serializer: AlbumSongsSerializer
end
