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

    def gosolo
        artist = current_user.artists.create!(artist_params)
        member = Member.find(params[:member_id])
        artist.members << member
        render json: artist, status: :created
    end
    
    def interesting
        artists=Artist.all.filter do |artist|
            artist.interesting_fact.include?(params[:key_value])
        end

        if artists.length > 0
            render json: artist_members(artists), status: :created
        else
            render json: {error: "no artists found"}, status: :not_found
        end
    end

    private

    def artist_params
        params.permit(:name, :genre, :date_established, :interesting_fact, :artist_image_url, :user_id)
    end

    def artist_members(artists)
        artists.map do |artist|
            artist.members
        end.flatten
    end

end
