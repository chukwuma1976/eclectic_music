class ArtistMembersController < ApplicationController

    def create
        artist_member = ArtistMember.create(artist_member_params)
        render json: artist_member, status: :created
    end

    private

    def artist_member_params
        params.permit(:artist_id, :member_id)
    end

end
