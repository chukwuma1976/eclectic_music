class Artist < ApplicationRecord
    validates_presence_of :name, :genre, :user_id
    validates :name, uniqueness: true
    validates :date_established, numericality: true

    has_many :artist_members, dependent: :destroy
    has_many :members, through: :artist_members

    has_many :songs, dependent: :destroy
    has_many :albums, through: :songs

    belongs_to :user
end
