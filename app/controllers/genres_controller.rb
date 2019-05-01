class GenresController < ApplicationController

  def index
    @genres = Genre.all
  end

  def show
    @genre = Genre.find(params[:id])
    @songs = @genre.songs
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.create(genre_params)
    redirect_to genres_path
  end

  def edit
    find_genre
  end

  def update
    find_genre.update(genre_params)
    redirect_to @genre
  end

  def destroy
    Genre.destroy(params[:id])
    redirect_to genres_path
  end

  private
  def genre_params
    params.require(:genre).permit(:name)
  end

  def find_genre
    @genre = Genre.find(params[:id])
  end

end
