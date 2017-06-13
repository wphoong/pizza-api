class AllController < ApplicationController
  def index
    @crusts = Crust.all
    @sauces = Sauce.all
    @cheeses = Cheese.all
    
    render :json => {
      :crusts => @crusts,
      :sauces => @sauces,
      :cheeses => @cheeses
    }
  end
end
