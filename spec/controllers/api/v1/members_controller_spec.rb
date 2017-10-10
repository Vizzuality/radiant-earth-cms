require 'rails_helper'

describe Api::V1::MembersController, type: :controller do
  context do
    let!(:some_members) {
      FactoryGirl.create(:member, name: 'Manuel Manuel', category: 'Staff')
      FactoryGirl.create(:member, name: 'Anual Manual', category: 'Staff')
      FactoryGirl.create(:member, name: 'Nuno Nuno', category: 'Interns')
    }
    let!(:joao_silva) {
      FactoryGirl.create(:member, name: 'Joao Silva', category: 'Staff')
    }
    let!(:anibal_ze) {
      FactoryGirl.create(:member, name: 'Anibal Ze', category: 'Staff')
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

      it 'sorts by name by default' do
        get :index
        parsed_body = JSON.parse(response.body)
        expect(parsed_body[0]["name"]).to eq(anibal_ze.name)
      end

      it 'filters by category' do
        get :index, params: { category: 'Interns' }
        parsed_body = JSON.parse(response.body)
        expect(parsed_body.length).to eq(1)
      end
    end
  end
end
