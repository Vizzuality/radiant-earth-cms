require 'rails_helper'

describe Api::V1::PostsController, type: :controller do
  context do
    let!(:some_posts) {
      FactoryGirl.create_list(:post, 2, category: 'News article')
      FactoryGirl.create(:post, category: 'Blog post')
    }

    describe 'GET index' do
      it 'returns a successful 200 response' do
        get :index
        expect(response).to be_success
      end

      it 'lists all known posts' do
        get :index
        parsed_body = JSON.parse(response.body)
        expect(parsed_body.length).to eq(3)
      end

      it 'filters by category' do
        get :index, params: { category: 'Blog post' }
        parsed_body = JSON.parse(response.body)
        expect(parsed_body.length).to eq(1)
      end

      it 'get only first page' do
        get :index, params: { page: 1, per_page: 2 }
        parsed_body = JSON.parse(response.body)
        expect(parsed_body.length).to eq(2)
      end
    end
  end
end
