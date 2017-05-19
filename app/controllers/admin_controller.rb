class AdminController < ApplicationController

  def index
    @priceplans = Priceplan.all
  end

  def newpriceplan
    @priceplan = Priceplan.new
  end
  
  def create
    @priceplan = Priceplan.new(priceplan_params)
    if @priceplan.save
      redirect_to admin_url
    else

    end
  end

  def destroy
    @priceplan = Priceplan.find(params[:id]).destroy
    redirect_to admin_url
  end
  
  
  private
  def priceplan_params
    params.require(:priceplan).permit(:no_of_people, :no_of_dishes, :price, :add_item_cost)
  end
  
  
end
