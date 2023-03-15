class MemberSerializer < ActiveModel::Serializer
  attributes :id, :name, :image_url

  has_many :artists
end
