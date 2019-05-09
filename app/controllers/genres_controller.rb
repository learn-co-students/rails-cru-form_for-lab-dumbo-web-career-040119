class GenresController < ApplicationController


  def index
    @genres = Genre.all
  end

  def show
    @genre = Genre.find(params[:id])
    # @genres = @genre.genres
  end

  def new
    @genre = Genre.new()
  end


  def create
    @genre = Genre.create(genre_params)
      if @genre.valid?
        redirect_to genres_path
      else
        render "new"
      end
  end


  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    @genre = Genre.find(params[:id])
    @genre.update(genre_params)
    @genre.save
    redirect_to @genre
  end


  def destroy
    Genre.find(params[:id]).destroy
    redirect_to genres_path
  end


  private

  def genre_params
    params.require(:genre).permit(:name)
  end




end
