class Artist < ApplicationRecord
    validates_presence_of :name, :genre, :user_id, :date_established
    validates :name, uniqueness: true
    validates :date_established, numericality: {greater_than: 0}

    has_many :artist_members, dependent: :destroy
    has_many :members, through: :artist_members

    has_many :songs, dependent: :destroy
    has_many :albums, through: :songs

    belongs_to :user
end
