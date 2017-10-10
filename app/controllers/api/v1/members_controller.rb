module Api
  module V1
    class MembersController < ApiController
      def index
        members = Member.where(filter_params).order(name: :asc)
        render json: members
      end

      private

      def filter_params
        params.permit(:category)
      end
    end
  end
end
