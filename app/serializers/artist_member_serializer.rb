class ArtistMemberSerializer < ActiveModel::Serializer
  attributes :id, :artist_id, :member_id
end
