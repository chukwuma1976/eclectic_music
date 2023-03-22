class SongsController < ApplicationController

    def index
        songs = Song.all.order(:name)
        render json: songs, status: :ok
    end

    def show
        song = Song.find(params[:id])
        render json: song, status: :ok
    end

    def create
        song = Song.create!(song_params)
        render json: song, status: :created
    end

    def update
        song = Song.find(params[:id])
        song.update!(song_params)
        render json: song, status: :accepted
    end

    def destroy
<<<<<<< HEAD
        song = Song.find(params[:id])
=======
        song = Song.find_by(id: params[:id])
>>>>>>> 21ff6903f350e670d3c813f55e82810ffc271f75
        song.destroy
        head :no_content
    end

    private
    
    def song_params
        params.permit(:name, :artist_id, :album_id)
    end

    def render_not_found
        render json: {error: "Song not found"}, status: :not_found
    end
end
