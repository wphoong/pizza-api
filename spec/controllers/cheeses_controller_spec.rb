require 'rails_helper'

RSpec.describe CheesesController, type: :controller do
  context '/cheeses' do
    it 'should list cheeses in database' do
      cheese = FactoryGirl.create(:cheese)
      get :index
      expect(response).to have_http_status(:success)
      expect(cheese.count).to eq 1
      response_value = ActiveSupport::JSON.decode(@response.body)
      expect(response_value.count).to eq 1
    end
  end
end
