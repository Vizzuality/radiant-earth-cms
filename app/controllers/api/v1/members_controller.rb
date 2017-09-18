module Api
  module V1
    class MembersController < ApiController
      def index
        members = Member.order(:name)
        render json: members
      end
    end
  end
end
