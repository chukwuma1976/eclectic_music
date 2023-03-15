class CreateAlbums < ActiveRecord::Migration[6.1]
  def change
    create_table :albums do |t|
      t.string :name
      t.string :album_cover_url
      t.integer :year_released

      t.timestamps
    end
  end
end
