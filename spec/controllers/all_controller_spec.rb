require 'rails_helper'

RSpec.describe AllController, type: :controller do
  context '/all' do
    it 'should list all ingredients in database' do
      crust = FactoryGirl.create(:crust)
      sauce = FactoryGirl.create(:sauce)
      get :index
      expect(response).to have_http_status(:success)
      response_value = ActiveSupport::JSON.decode(@response.body)
      expect(response_value.count).to eq 2
    end
  end
end
