module Api
  module V1
    class MembersController < ApiController
      def index
        members = Member.where(filter_params)
        members = if params[:is_board_member]
          members.order("substring(name, '([^[:space:]]+)$') ASC")
        else
          members.order(name: :asc)
        end
        render json: members
      end

      private

      def filter_params
        params.permit(:category, :is_board_member)
      end
    end
  end
end
