class Artist < ApplicationRecord
    validates :name, presence: true
    validates :date_established, numericality: true

    has_many :artist_members
    has_many :members, through: :artist_members

    has_many :songs, dependent: :destroy
    has_many :albums, through: :songs

    belongs_to :user
end
