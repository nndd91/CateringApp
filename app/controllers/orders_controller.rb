class OrdersController < ApplicationController

  def index

  end

  def show #Show order for each user

  end
  
  
  def new 
    @order = Order.new
    @menus = Menu.all
  end
  


end
