class Member < ApplicationRecord
    validates :name, presence: true

    has_many :artist_members, dependent: :destroy
    has_many :artists, through: :artist_members
end
