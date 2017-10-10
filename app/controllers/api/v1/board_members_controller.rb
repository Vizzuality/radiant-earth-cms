module Api
  module V1
    class BoardMembersController < ApiController
      def index
        members = BoardMember.
          order("is_board_chair DESC, substring(name, '([^[:space:]]+)$') ASC")
        render json: members
      end
    end
  end
end
