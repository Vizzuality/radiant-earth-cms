require 'rails_helper'

describe Api::V1::MembersController, type: :controller do
  context do
    let!(:some_members) {
      FactoryGirl.create_list(:member, 3)
    }

    describe 'GET index' do
      it 'returns a successful 200 response' do
        get :index
        expect(response).to be_success
      end

      it 'lists all known members' do
        get :index
        parsed_body = JSON.parse(response.body)
        expect(parsed_body.length).to eq(3)
      end
    end
  end
end
