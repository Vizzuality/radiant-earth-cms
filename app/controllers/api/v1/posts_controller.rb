module Api
  module V1
    class PostsController < ApiController
      def index
        posts = Post.order(created_at: :asc).where(filter_params)
        render json: posts
      end

      private

      def filter_params
        params.permit(:category)
      end
    end
  end
end
