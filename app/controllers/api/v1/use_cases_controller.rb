module Api
  module V1
    class UseCasesController < ApiController
      def index
        use_cases = UseCase.order(created_at: :asc)
        paginate json: use_cases
      end
    end
  end
end
