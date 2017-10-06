module Api
  module V1
    class MembersController < ApiController
      def index
        members = Member.where(filter_params)
        if params[:is_board_member]
          members.order("ORDER BY substring(name, '([^[:space:]]+)$')")
        else
          members.order(:name)
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
