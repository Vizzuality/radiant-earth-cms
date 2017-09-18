require 'rails_helper'

describe Api::V1::MembersController, type: :controller do
  context do
    let!(:some_members) {
      FactoryGirl.create_list(:member, 2)
      FactoryGirl.create(:member, category: 'Interns')
      FactoryGirl.create(:member, is_board_member: true)
    }

    describe 'GET index' do
      it 'returns a successful 200 response' do
        get :index
        expect(response).to be_success
      end

      it 'lists all known members' do
        get :index
        parsed_body = JSON.parse(response.body)
        expect(parsed_body.length).to eq(4)
      end

      it 'filters by is_board_member' do
        get :index, params: { is_board_member: true }
        parsed_body = JSON.parse(response.body)
        expect(parsed_body.length).to eq(1)
      end

      it 'filters by category' do
        get :index, params: { category: 'Interns' }
        parsed_body = JSON.parse(response.body)
        expect(parsed_body.length).to eq(1)
      end
    end
  end
end
