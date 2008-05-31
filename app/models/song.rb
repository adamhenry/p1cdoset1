class Song < ActiveRecord::Base
	
	def new
		@song = Song.new
	end
end
