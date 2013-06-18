class PlaylistsController < ApplicationController
before_action :set_playlist, only: [:edit, :show, :update, :destroy]

def index
  @playlists = Playlist.all
end

def new
  @playlist = Playlist.new
end

def create
  @playlist = Playlist.new(playlist_params)
  
  if @playlist.save
  	redirect_to @playlist
  else
  	render 'new'
  end
end

def show
end

def edit
end

def update
  @playlist.update playlist_params
  redirect_to @playlist
end
 
def destroy
  @playlist.destroy
  redirect_to playlists_path
end

private
  
def playlist_params
  params.require('playlist').permit(:title, :mp3, :track)
end

def set_playlist
  @playlist = Playlist.find(params[:id])
rescue ActiveRecord::RecordNotFound
  flash.now[:notice] = "Invalid Playlist ID #{params[:id]}"
  redirect_to root_path
end

end