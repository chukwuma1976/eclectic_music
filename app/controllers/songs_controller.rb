class SongsController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found
    # before_action :authorize

    def index
        songs = Song.all.order(:name)
        render json: songs, status: :ok
    end

    def show
        song = Song.find(params[:id])
        render json: song, status: :ok
    end

    def create
        song = Song.create(song_params)
        render json: song, status: :created
    end

    def update
        song = Song.find(params[:id])
        song.update(song_params)
        render json: song, status: :accepted
    end

    def destroy
        song = Song.find(params[:id])
        song.destroy
        head :no_content
    end

    private

    # def authorize
    #     return render json: {errors: ["Not authorized"]}, status: :unauthorized unless session.include? :user_id
    # end
    
    def song_params
        params.permit(:name, :artist_id, :album_id)
    end

    def render_unprocessable_entity(invalid)
        render json: {errors: invalid.record.errors}, status: :unprocessable_entity
    end

    def render_not_found
        render json: {error: "Song not found"}, status: :not_found
    end
end
