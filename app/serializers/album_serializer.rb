class AlbumSerializer < ActiveModel::Serializer
  attributes :id, :name, :album_cover_url

  has_many :songs
  has_many :artists
end
