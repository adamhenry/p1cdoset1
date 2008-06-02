class Song < ActiveRecord::Base
	belongs_to :album
	belongs_to :artist
	
	def new
		@song = Song.new
	end
end
