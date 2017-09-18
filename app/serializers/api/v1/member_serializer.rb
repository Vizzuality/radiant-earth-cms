module Api
  module V1
    class MemberSerializer < ActiveModel::Serializer
      attributes :members, :email, :title, :description, :is_board_member,
        :category
    end
  end
end
