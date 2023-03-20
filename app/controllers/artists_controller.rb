class ArtistsController < ApplicationController
    # before_action :authorize

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
        artist = Artist.create(artist_params)
        if artist.valid?
            render json: artist, status: :created
        else
            render json: {errors: artist.errors.full_messages}, status: :unprocessable_entity
        end
    end

    def update
        artist = Artist.find(params[:id])
        artist.update(artist_params)
        render json: artist, status: :ok
    end

    def destroy
        artist = Artist.find_by(id: params[:id])
        if artist
            artist.destroy
            head :no_content
        else
            render json: {errors: ["Artist not found"]}, status: :not_found
        end
    end

    private

    # def authorize
    #     return render json: {errors: ["Not authorized"]}, status: :unauthorized unless session.include? :user_id
    # end

    def artist_params
        params.permit(:name, :genre, :date_established, :interesting_fact, :artist_image_url, :user_id)
    end

end
