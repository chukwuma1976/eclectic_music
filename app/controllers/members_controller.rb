class MembersController < ApplicationController

    def index
        array = []
        User.find_by(id: session[:user_id]).artists.each do |artist|
            array << artist.members.uniq
        end
        members = array.flatten
        render json: members, status: :ok
    end

    def show
        member = Member.find(params[:id])
        render json: member, status: :ok
    end

    def create
        member = Member.create!(member_params)
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

    def render_not_found
        render json: {error: "Member not found"}, status: :not_found
    end
end
