require 'rails_helper'

describe Api::V1::VacanciesController, type: :controller do
  context do
    let!(:some_vacancies) {
      FactoryGirl.create_list(:vacancy, 3)
      FactoryGirl.create(:vacancy, active: false)
    }

    describe 'GET index' do
      it 'returns a successful 200 response' do
        get :index
        expect(response).to be_success
      end

      it 'lists all known vacancies' do
        get :index
        parsed_body = JSON.parse(response.body)
        expect(parsed_body.length).to eq(3)
      end

      it 'get only first page' do
        get :index, params: { page: 1, per_page: 2}
        parsed_body = JSON.parse(response.body)
        expect(parsed_body.length).to eq(2)
      end
    end
  end
end
