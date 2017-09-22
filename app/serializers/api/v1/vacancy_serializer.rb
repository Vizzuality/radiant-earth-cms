module Api
  module V1
    class VacancySerializer < ActiveModel::Serializer
      attributes :title, :url, :active
    end
  end
end
