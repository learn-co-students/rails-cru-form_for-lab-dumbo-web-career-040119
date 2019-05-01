class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
    @songs = @artist.songs
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create(artist_params)
    redirect_to artists_path
  end

  def edit
    find_artist
  end

  def update
    find_artist.update(artist_params)
    redirect_to @artist
  end

  def destroy
    Artist.destroy(params[:id])
    redirect_to artists_path
  end

  private
  def artist_params
    params.require(:artist).permit(:name, :bio)
  end

  def find_artist
    @artist = Artist.find(params[:id])
  end

end
