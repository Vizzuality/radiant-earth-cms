require 'rails_helper'

describe Api::V1::MembersController, type: :controller do
  context do
    let!(:some_members) {
      FactoryGirl.create_list(:member, 2, category: 'Staff')
      FactoryGirl.create(:member, category: 'Interns')
    }
    let!(:joao_silva) {
      FactoryGirl.create(:member, name: 'Joao Silva', is_board_member: true,
                         category: 'Staff')
    }
    let!(:anibal_ze) {
      FactoryGirl.create(:member, name: 'Anibal Ze', is_board_member: true,
                         category: 'Staff')
    }

    describe 'GET index' do
      it 'returns a successful 200 response' do
        get :index
        expect(response).to be_success
      end

      it 'lists all known members' do
        get :index
        parsed_body = JSON.parse(response.body)
        expect(parsed_body.length).to eq(5)
      end

      it 'filters by is_board_member' do
        get :index, params: { is_board_member: true }
        parsed_body = JSON.parse(response.body)
        expect(parsed_body.length).to eq(2)
      end

      it 'sorts by last name when filtering by is_board_member' do
        get :index, params: { is_board_member: true }
        parsed_body = JSON.parse(response.body)
        expect(parsed_body[0]["name"]).to eq(joao_silva.name)
      end

      it 'filters by category' do
        get :index, params: { category: 'Interns' }
        parsed_body = JSON.parse(response.body)
        expect(parsed_body.length).to eq(1)
      end
    end
  end
end
