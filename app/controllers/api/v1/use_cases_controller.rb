module Api
  module V1
    class UseCasesController < ApiController
      def index
        use_cases = UseCase.order(created_at: :asc).where(filter_params)
        paginate json: use_cases
      end

      private

      def filter_params
        params.permit(:category)
      end
    end
  end
end
