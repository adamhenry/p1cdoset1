class Song < ActiveRecord::Base
	belongs_to :album
	
	def new
		@song = Song.new
	end
end
