module Api
  module V1
    class BoardMemberSerializer < ActiveModel::Serializer
      attributes :name, :email, :title, :description, :image

      def image
        if object.image.present?
          object.image.url
        end
      end
    end
  end
end
