class ArtistsController < ApplicationController

    def index
        # user = User.find_by(id: session[:user_id])
        # artists = user.artists.order(:name)
        artists = Artist.all.order(:name)
        render json: artists, status: :ok
    end

    def show
        artist = Artist.find(params[:id])
        render json: artist, status: :ok
    end

    def create
        # user = User.find_by(id: session[:user_id])
        # artist = User.artists.create(artist_params)
<<<<<<< HEAD
        artist = Artist.create!(artist_params)
        render json: artist, status: :created
=======
        artist = Artist.create(artist_params)
        if artist.valid?
            render json: artist, status: :created
        else
            render json: {errors: artist.errors.full_messages}, status: :unprocessable_entity
        end
>>>>>>> 21ff6903f350e670d3c813f55e82810ffc271f75
    end

    def update
        artist = Artist.find(params[:id])
        artist.update!(artist_params)
        render json: artist, status: :accepted
    end

    def destroy
<<<<<<< HEAD
        artist = Artist.find(params[:id])
        artist.destroy
        head :no_content
=======
        artist = Artist.find_by(id: params[:id])
        if artist
            artist.destroy
            head :no_content
        else
            render json: {errors: ["Artist not found"]}, status: :not_found
        end
>>>>>>> 21ff6903f350e670d3c813f55e82810ffc271f75
    end

    private

    def artist_params
        params.permit(:name, :genre, :date_established, :interesting_fact, :artist_image_url, :user_id)
    end

    def render_not_found
        render json: {error: "Artist not found"}, status: :not_found
    end
end
