class MembersController < ApplicationController
    # before_action: authorize

    def index
        members = Member.all.order(:name)
        render json: members, status: :ok
    end

    def show
        member = Member.find_by(id: params[:id])
        render json: member, status: :ok
    end

    def create
        member = Member.create(member_params)
        if member.valid?
            render json: member, status: :created
        else
            render json: {errors: member.errors.full_messages}, status: :unprocessable_entity
        end
    end

    def update
        member = Member.find_by(id: params[:id])
        member.update(member_params)
        render json: member, status: :ok
    end

    def destroy
        member = Member.find_by(id: params[:id])
        member.destroy
        head :no_content
    end

    private

    # def authorize
    #     return render json: {errors: ["Not authorized"]}, status: :unauthorized unless session.include? :user_id
    # end
    
    def member_params
        params.permit(:name, :image_url)
    end
end
