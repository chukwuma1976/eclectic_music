class Artist < ApplicationRecord
    validates :name, :genre, :date_established, presence: true
    validates :name, uniqueness: {scope: :user_id, message: "You can only use this name once"}
    validates :date_established, numericality: {greater_than: 1000}

    has_many :artist_members, dependent: :destroy
    has_many :members, through: :artist_members

    has_many :songs, dependent: :destroy
    has_many :albums, through: :songs

    belongs_to :user
end
