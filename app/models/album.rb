class Album < ActiveRecord::Base
	has_many :songs
	belongs_to :label
end
