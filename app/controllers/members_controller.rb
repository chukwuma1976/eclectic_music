class MembersController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found
    # before_action: authorize

    def index
        members = Member.all.order(:name)
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

    # def authorize
    #     return render json: {errors: ["Not authorized"]}, status: :unauthorized unless session.include? :user_id
    # end
    
    def member_params
        params.permit(:name, :image_url)
    end

    def render_unprocessable_entity(invalid)
        render json: {errors: invalid.record.errors}, status: :unprocessable_entity
    end

    def render_not_found
        render json: {error: "Member not found"}, status: :not_found
    end
end
