require 'rails_helper'

RSpec.describe MeatsController, type: :controller do
  context '/meats' do
    it 'should list meats in database' do
      meat = FactoryGirl.create(:meat)
      get :index
      expect(response).to have_http_status(:success)
      response_value = ActiveSupport::JSON.decode(@response.body)
      expect(response_value.count).to eq 1
    end
  end
end
