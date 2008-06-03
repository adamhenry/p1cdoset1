class CreateArtists < ActiveRecord::Migration
  def self.up
    create_table :artists do |t|
	t.column :name, :string
    end

    add_column :songs, :artist_id, :integer
    remove_column :songs, :artist
  end

  def self.down
    drop_table :artists

    remove_column :songs, :artist_id
    add_column :songs, :artist, :string
  end
end
