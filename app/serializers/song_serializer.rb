class SongSerializer < ActiveModel::Serializer
  attributes :id, :name, :artist_id, :album_id

  belongs_to :artist
  belongs_to :album
end
