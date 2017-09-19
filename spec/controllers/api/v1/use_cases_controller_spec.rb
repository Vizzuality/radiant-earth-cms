require 'rails_helper'

describe Api::V1::UseCasesController, type: :controller do
  context do
    let!(:some_use_cases) {
      FactoryGirl.create_list(:use_case, 2, category: 'Case study')
      FactoryGirl.create(:use_case, category: 'Testimonial')
    }

    describe 'GET index' do
      it 'returns a successful 200 response' do
        get :index
        expect(response).to be_success
      end

      it 'lists all known use_cases' do
        get :index
        parsed_body = JSON.parse(response.body)
        expect(parsed_body.length).to eq(3)
      end

      it 'filters by category' do
        get :index, params: { category: 'Testimonial' }
        parsed_body = JSON.parse(response.body)
        expect(parsed_body.length).to eq(1)
      end

      it 'get only first page' do
        get :index, params: { page: 1, per_page: 2}
        parsed_body = JSON.parse(response.body)
        expect(parsed_body.length).to eq(2)
      end
    end
  end
end
