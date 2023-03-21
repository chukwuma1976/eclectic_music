class AlbumsController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found
    # before_action :authorize

    def index
        albums = Album.all.order(:name)
        render json: albums, status: :ok
    end

    def show
        album = Album.find(params[:id])
        render json: album, status: :ok
    end

    def create
        album = Album.create(album_params)
        render json: album, status: :created
    end

    def update
        album = Album.find(params[:id])
        album.update(album_params)
        render json: album, status: :accepted
    end

    def destroy
        album = Album.find(params[:id])
        album.destroy
        head :no_content
    end

    private

    # def authorize
    #     return render json: {errors: ["Not authorized"]}, status: :unauthorized unless session.include? :user_id
    # end

    def album_params
        params.permit(:name, :year_released, :album_cover_url)
    end

    def render_unprocessable_entity(invalid)
        render json: {errors: invalid.record.errors}, status: :unprocessable_entity
    end

    def render_not_found
        render json: {error: "Album not found"}, status: :not_found
    end
end
