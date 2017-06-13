class CheesesController < ApplicationController
  def index
    render json: Cheese.all
  end
end
