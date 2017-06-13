require 'rails_helper'

RSpec.describe AllController, type: :controller do
  context '/all' do
    it 'should list all ingredients in database' do
      get :index
      expect(response).to have_http_status(:success)
      response_value = ActiveSupport::JSON.decode(@response.body)
      expect(response_value.count).to eq 5
    end
  end
end
