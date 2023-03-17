class MemberSerializer < ActiveModel::Serializer
  attributes :id, :name, :image_url, :artists, :user_id

  def artists
    artists=self.object.artists.uniq
    artists.map { |artist| {id: artist.id, name: artist.name, genre: artist.genre} }
  end

  def user_id
    artist=self.object.artists.first.user_id
  end

end
