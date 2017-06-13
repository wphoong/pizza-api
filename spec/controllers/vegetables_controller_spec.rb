require 'rails_helper'

RSpec.describe VegetablesController, type: :controller do
  context '/vegetables' do
    it 'should list vegetables in database' do
      vegetable = FactoryGirl.create(:vegetable)
      get :index
      expect(response).to have_http_status(:success)
      expect(vegetable.count).to eq 1
      response_value = ActiveSupport::JSON.decode(@response.body)
      expect(response_value.count).to eq 1
    end
  end
end
