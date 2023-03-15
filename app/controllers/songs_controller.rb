class SongsController < ApplicationController
    before_action :authorize

    def index
        songs = Song.all
        render json: songs, status: :ok
    end

    def show
        song = Song.find_by(id: params[:id])
        render json: song, status: :ok
    end

    def create
        song = Song.create(song_params)
        render json: song, status: :created
    end

    def update
        song = Song.find_by(id: params[:id])
        song.update(song_params)
        render json: song, status: :ok
    end

    def delete
        song = Song.find_by(id: params[:id])
        song.destroy
        render json: {}, status: :no_content
    end

    private

    def authorize
        return render json: {errors: ["Not authorized"]}, status: :unauthorized unless session.include? :user_id
    end
    
    def song_params
        params.permit(:name, :artist_id, :album_id)
    end

end
