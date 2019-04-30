class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end

  def show
    find_artist
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create(artist_params)
    redirect_to @artist
  end

  def edit
    find_artist
  end

  def update
    @artist = Artist.update(artist_params)
    redirect_to @artist
  end

  private
  def find_artist
    @artist = Artist.find(params[:id])
  end

  def artist_params
    params.require(:artist).permit(:name, :artist_id, :genre_id)
  end
end
