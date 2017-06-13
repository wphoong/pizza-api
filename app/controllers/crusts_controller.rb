class CrustsController < ApplicationController
  def index
    render json: Crust.all
  end
end
