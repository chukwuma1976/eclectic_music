class CreateArtistMembers < ActiveRecord::Migration[6.1]
  def change
    create_table :artist_members do |t|
      t.integer :artist_id
      t.integer :member_id

      t.timestamps
    end
  end
end
