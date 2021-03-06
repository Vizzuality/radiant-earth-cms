module Api
  module V1
    class MemberSerializer < ActiveModel::Serializer
      attributes :name, :email, :title, :description, :category, :image

      def image
        if object.image.present?
          object.image.url
        end
      end
    end
  end
end
