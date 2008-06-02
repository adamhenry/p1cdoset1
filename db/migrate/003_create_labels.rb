class CreateLabels < ActiveRecord::Migration
  def self.up
    create_table :labels do |t|
	t.column :label, :string
    end

    add_column :albums, :label_id, :integer
    remove_column :songs, :companie
  end

  def self.down
    drop_table :labels

    remove_column :albums, :label
    add_column :songs, :companie, :string
  end
end
