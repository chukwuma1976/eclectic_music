class Album < ApplicationRecord
    validates_presence_of :name, :year_released
    validates :year_released, numericality: {greater_than: 0}

    has_many :songs, dependent: :destroy
    has_many :artists, through: :songs
end
