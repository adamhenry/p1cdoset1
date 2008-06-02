class OrganizerController < ApplicationController

	def index
		@labels = Label.find(:all)
		@songs = Song.find(:all, :order => params[:order])
		@albums = Album.find(:all)
	end

	def new_song
		@song = Song.new params[:song]
		@song.save
		flash[:notice] = " #{@song.title} by #{@song.artist} added"
		redirect_to :action => "index"
	end

end
