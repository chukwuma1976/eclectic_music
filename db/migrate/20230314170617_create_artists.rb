class CreateArtists < ActiveRecord::Migration[6.1]
  def change
    create_table :artists do |t|
      t.string :name
      t.string :genre
      t.string :date_established
      t.text :interesting_fact
      t.string :artist_image_url
      t.integer :user_id

      t.timestamps
    end
  end
end
