class ArtistsController < ApplicationController


            def index
              @artists = Artist.all
            end

            def show
              @artist = Artist.find(params[:id])
              # @artists = @artist.artists
            end

            def new
              @artist = Artist.new()
            end


            def create
              @artist = Artist.create(artist_params)
                if @artist.valid?
                  redirect_to artists_path
                else
                  render "new"
                end
            end


            def edit
              @artist = Artist.find(params[:id])
            end

            def update
              @artist = Artist.find(params[:id])
              @artist.update(artist_params)
              @artist.save
              redirect_to @artist
            end


            def destroy
              Artist.find(params[:id]).destroy
              redirect_to artists_path
            end


            private

            def artist_params
              params.require(:artist).permit(:name, :bio)
            end




end
