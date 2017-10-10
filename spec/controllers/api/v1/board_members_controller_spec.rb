require 'rails_helper'

describe Api::V1::BoardMembersController, type: :controller do
  context do
    let!(:some_board_members) {
      FactoryGirl.create(:board_member, name: 'Manuel Manuel')
      FactoryGirl.create(:board_member, name: 'Anual Manual')
      FactoryGirl.create(:board_member, name: 'Nuno Nuno')
    }
    let!(:joao_alberto) {
      FactoryGirl.create(:board_member, name: 'Joao Alberto')
    }
    let!(:anibal_ze) {
      FactoryGirl.create(:board_member, name: 'Anibal Ze',
                         is_board_chair: true)
    }

    describe 'GET index' do
      it 'returns a successful 200 response' do
        get :index
        expect(response).to be_success
      end

      it 'lists all known board_members' do
        get :index
        parsed_body = JSON.parse(response.body)
        expect(parsed_body.length).to eq(5)
      end

      it 'sorts by chair first and then last name' do
        get :index
        parsed_body = JSON.parse(response.body)
        expect(parsed_body[0]["name"]).to eq(anibal_ze.name)
        expect(parsed_body[1]["name"]).to eq(joao_alberto.name)
      end
    end
  end
end
