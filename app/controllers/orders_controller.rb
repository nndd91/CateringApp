class OrdersController < ApplicationController

  def index

  end

  def show #Show order for each user

  end
  
  
  def new 
    @order = OrderTable.new
    @menu = Menu.all
  end
  


end
