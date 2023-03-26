class ArtistsController < ApplicationController

    def index
        artists = current_user.artists.order(:name)
        render json: artists, status: :ok
    end

    def show
        artist = current_user.artists.find(params[:id])
        render json: artist, status: :ok
    end

    def create
        artist = current_user.artists.create!(artist_params)
        render json: artist, status: :created
    end

    def update
        artist = current_user.artists.find(params[:id])
        artist.update!(artist_params)
        render json: artist, status: :accepted
    end

    def destroy
        artist = current_user.artists.find(params[:id])
        artist.destroy
        head :no_content
    end

    private

    def artist_params
        params.permit(:name, :genre, :date_established, :interesting_fact, :artist_image_url, :user_id)
    end

    def render_not_found
        render json: {error: "Artist not found"}, status: :not_found
    end
end
