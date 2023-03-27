class Member < ApplicationRecord
    validates :name, presence: true
    validates :name, uniqueness: {scope: :user_id}

    has_many :artist_members, dependent: :destroy
    has_many :artists, through: :artist_members
end