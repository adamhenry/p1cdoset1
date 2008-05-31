class CreateSongs < ActiveRecord::Migration
  def self.up
    create_table :songs do |t|
	t.column :title, :string
	t.column :album, :string
	t.column :artist, :string
	t.column :companie, :string
    end
  end

  def self.down
    drop_table :songs
  end
end
