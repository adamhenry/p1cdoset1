class CreateAlbums < ActiveRecord::Migration
  def self.up
    create_table :albums do |t|
	t.column :title, :string
    end

	#would add data into data base here but having problems with finding refrences to unique for rails arrays and rails SQL interface

    remove_column :songs, :companie
    add_column :songs, :album_id, :integer

  end

  def self.down
    drop_table :albums

    add_column :songs, :companie, :string
    remove_column :songs, :album_id

  end
end
