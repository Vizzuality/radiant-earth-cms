module Api
  module V1
    class MembersController < ApiController
      def index
        members = Member.order(:name).where(filter_params)
        render json: members
      end

      private

      def filter_params
        params.permit(:category, :is_board_member)
      end
    end
  end
end
