class OrganizerController < ApplicationController

	def index
		@labels = Label.find(:all)
		@songs = Song.find(:all, :order => params[:order])
		@albums = Album.find(:all)
	end
	
	def destroy_song
		@song = Song.find(params[:id])
		flash[:notice] = " #{@song.title} by #{@song.artist.name} removed"
		Song.find(params[:id]).destroy
		redirect_to :action => "index"
	end

	def add_song
		@album = Album.find(params[:album_id])
	end

	def new_song
		@artist = Artist.find_by_name(params[:artist]) || Artist.create( params[:artist])
		@song = Song.create params[:song].merge(  {:album_id => params[:album_id],:artist_id => @artist.id } )
		flash[:notice] = " #{@song.title} by #{@artist.name} added"
		redirect_to :action => "index"
	end

end
