class MeatsController < ApplicationController
  def index
    render json: Meat.all
  end
end
