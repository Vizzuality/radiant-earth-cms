module Api
  module V1
    class VacanciesController < ApiController
      def index
        vacancies = Vacancy.order(created_at: :asc).where(active: true)
        paginate json: vacancies
      end
    end
  end
end
