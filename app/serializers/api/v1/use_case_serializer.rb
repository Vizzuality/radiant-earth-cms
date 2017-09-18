module Api
  module V1
    class UseCaseSerializer < ActiveModel::Serializer
      attributes :author, :quote, :description, :signature, :video_url,
        :created_at
    end
  end
end
