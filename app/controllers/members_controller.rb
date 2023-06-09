class MembersController < ApplicationController

    def index
        array = []
        current_user.artists.each do |artist|
            array << artist.members
        end
        members = array.flatten.uniq
        render json: members, status: :ok
    end

    def show
        member = Member.find(params[:id])
        render json: member, status: :ok
    end

    def create
        artist = Artist.find(params[:artist_id])
        member=artist.members.create!(member_params)
        render json: member, status: :created
    end

    def update
        member = Member.find(params[:id])
        member.update!(member_params)
        render json: member, status: :accepted
    end

    def destroy
        member = Member.find(params[:id])
        member.destroy
        head :no_content
    end

    private
    
    def member_params
        params.permit(:name, :image_url)
    end

end
