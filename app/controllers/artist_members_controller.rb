class ArtistMembersController < ApplicationController

    def create
        link = ArtistMember.create(artist_member_params)
        render json: link, status: :created
    end

end
