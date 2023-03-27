class MemberSerializer < ActiveModel::Serializer
  attributes :id, :name, :image_url, :artists

  def artists
    artists=self.object.artists.uniq
    artists.map { |artist| {id: artist.id, name: artist.name, genre: artist.genre} }
  end

end
