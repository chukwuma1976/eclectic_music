class Song < ApplicationRecord
    
    validates :name, presence: true

    belongs_to :artist
    belongs_to :album

end
