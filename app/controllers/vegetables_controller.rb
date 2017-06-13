class VegetablesController < ApplicationController
  def index
    render json: Vegetable.all
  end
end
