class AllController < ApplicationController
  def index
    @crusts = Crust.all
    @sauces = Sauce.all
    
    render :json => {
      :crusts => @crusts,
      :sauces => @sauces
    }
  end
end
