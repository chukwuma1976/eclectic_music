class ArtistMembersController < ApplicationController

    def create
        link = ArtistMember.create(artist_member_params)
        render json: link, status: :created
    end

    private

    def artist_member_params
        params.permit(:artist_id, :member_id)
    end

end
