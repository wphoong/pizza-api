require 'rails_helper'

RSpec.describe SaucesController, type: :controller do
  context '/sauces' do
    it 'should list sauces in database' do
      sauce = FactoryGirl.create(:sauce)
      get :index
      expect(response).to have_http_status(:success)
      expect(sauce.count).to eq 1
      response_value = ActiveSupport::JSON.decode(@response.body)
      expect(response_value.count).to eq 1
    end
  end
end
