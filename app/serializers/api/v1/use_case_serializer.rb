module Api
  module V1
    class UseCaseSerializer < ActiveModel::Serializer
      attributes :author, :quote, :description, :signature, :video_url,
        :created_at, :image, :category

      def image
        if object.image.present?
          object.image.url
        end
      end
    end
  end
end
