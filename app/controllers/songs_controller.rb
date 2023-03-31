class SongsController < ApplicationController

    def index
        array = []
        current_user.artists.each do |artist|
            array << artist.songs
        end
        songs = array.flatten
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
        song = Song.find(params[:id])
        song.destroy
        head :no_content
    end

    private
    
    def song_params
        params.permit(:name, :artist_id, :album_id)
    end

end
