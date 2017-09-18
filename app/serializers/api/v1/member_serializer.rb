module Api
  module V1
    class MemberSerializer < ActiveModel::Serializer
      attributes :name, :email, :title, :description, :is_board_member,
        :category, :image

      def image
        if object.image.present?
          object.image.url
        end
      end
    end
  end
end
