class SaucesController < ApplicationController
  def index
    render json: Sauce.all
  end
end
