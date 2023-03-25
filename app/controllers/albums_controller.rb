class AlbumsController < ApplicationController

    def index
        array = []
        User.find_by(id: session[:user_id]).artists.each do |artist|
            array << artist.albums.uniq
        end
        albums = array.flatten
        render json: albums, status: :ok
    end

    def show
        album = Album.find(params[:id])
        render json: album, status: :ok
    end

    def create
        album = Album.create!(album_params)
        render json: album, status: :created
    end

    def update
        album = Album.find(params[:id])
        album.update!(album_params)
        render json: album, status: :accepted
    end

    def destroy
        album = Album.find(params[:id])
        album.destroy
        head :no_content
    end

    private

    def album_params
        params.permit(:name, :year_released, :album_cover_url)
    end

    def render_not_found
        render json: {error: "Album not found"}, status: :not_found
    end
end
