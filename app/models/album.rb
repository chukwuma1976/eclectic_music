class Album < ApplicationRecord
    validates :name, presence: true
    validates :year_released, numericality: true

    has_many :songs, dependent: :destroy
    has_many :artists, through: :songs
end
