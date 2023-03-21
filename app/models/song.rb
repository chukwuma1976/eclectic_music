class Song < ApplicationRecord
    
    validates_presence_of :name, :artist_id, :album_id 

    belongs_to :artist
    belongs_to :album

end
