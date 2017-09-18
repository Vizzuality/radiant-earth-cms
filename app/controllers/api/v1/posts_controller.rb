module Api
  module V1
    class PostsController < ApiController
      def index
        posts = Post.order(created_at: :asc)
        render json: posts
      end
    end
  end
end
