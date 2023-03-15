class ArtistSerializer < ActiveModel::Serializer
  attributes :id, :name, :genre, :date_established, :interesting_fact, :artist_image_url, :user_id

  has_many :members
  has_many :albums
  belongs_to :user
  
end
