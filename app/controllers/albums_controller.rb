class AlbumsController < ApplicationController

    # before_action :authorize

    def index
        albums = Album.all.order(:name)
        render json: albums, status: :ok
    end

    def show
        album = Album.find_by(id: params[:id])
        render json: album, status: :ok
    end

    def create
        album = Album.create(album_params)
        if album.valid? 
            render json: album, status: :created
        else
            render json: {errors: album.errors.full_messages}, status: :unprocessable_entity
        end
    end

    def update
        album = Album.find_by(id: params[:id])
        album.update(album_params)
        render json: album, status: :ok
    end

    def destroy
        album = Album.find_by(id: params[:id])
        album.destroy
        render json: {}, status: :no_content
    end

    private

    # def authorize
    #     return render json: {errors: ["Not authorized"]}, status: :unauthorized unless session.include? :user_id
    # end

    def album_params
        params.permit(:name, :year_released, :album_cover_url)
    end

end
