class AllController < ApplicationController
  def index
    @crusts = Crust.all
    @sauces = Sauce.all
    @cheeses = Cheese.all
    @meats = Meat.all
    @vegetables = Vegetable.all
    
    render :json => {
      :crusts => @crusts,
      :sauces => @sauces,
      :cheeses => @cheeses,
      :meats => @meats,
      :vegetables => @vegetables
    }
  end
end
