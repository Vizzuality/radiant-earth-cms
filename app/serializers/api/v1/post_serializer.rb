module Api
  module V1
    class PostSerializer < ActiveModel::Serializer
      attributes :url, :title, :short_description, :video_url, :created_at,
        :image, :category

      def image
        if object.image.present?
          object.image.url
        end
      end
    end
  end
end
