class SongSerializer < ActiveModel::Serializer
  attributes :id, :name, :artist_id, :album_id, :artist_name, 
  :genre, :release_date, :album_name, :user_id

  def artist_name
    self.object.artist.name
  end

  def genre
    self.object.artist.genre
  end

  def release_date
    self.object.artist.date_established
  end

  def album_name
    self.object.album.name
  end

  def user_id
    self.object.artist.user_id
  end

end
