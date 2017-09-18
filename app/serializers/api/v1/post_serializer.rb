module Api
  module V1
    class PostSerializer < ActiveModel::Serializer
      attributes :url, :title, :short_description, :video_url, :created_at
    end
  end
end
