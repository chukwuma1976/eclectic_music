class Album < ApplicationRecord
    validates :name, :year_released, presence: true
    validates :year_released, numericality: {greater_than: 1000}

    has_many :songs, dependent: :destroy
    has_many :artists, through: :songs
end
