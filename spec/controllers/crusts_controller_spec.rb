require 'rails_helper'

RSpec.describe CrustsController, type: :controller do
  context '/crusts' do
    it 'should list crusts in database' do
      crust = FactoryGirl.create(:crust)
      get :index
      expect(response).to have_http_status(:success)
      expect(crust.count).to eq 1
      response_value = ActiveSupport::JSON.decode(@response.body)
      expect(response_value.count).to eq 1
    end
  end
end
