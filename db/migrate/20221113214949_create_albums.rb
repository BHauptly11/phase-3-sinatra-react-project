class CreateAlbums < ActiveRecord::Migration[6.1]
  def change
   create_table :albums do |t|
    t.string :name
    t.string :genre
    t.string :artist
    t.integer :release_year
    t.string :image_url
    t.belongs_to :person
  end    
  end
end
