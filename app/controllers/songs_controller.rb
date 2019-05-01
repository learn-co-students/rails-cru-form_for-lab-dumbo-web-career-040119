class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.create(song_params)
    redirect_to songs_path
  end

  def edit
    find_song
  end

  def update
    find_song.update(song_params)
    redirect_to @song
  end

  def destroy
    Song.destroy(params[:id])
    redirect_to songs_path
  end

  private
  def song_params
    params.require(:song).permit(:name, :artist_id, :genre_id)
  end

  def find_song
    @song = Song.find(params[:id])
  end

end
