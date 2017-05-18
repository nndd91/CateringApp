class OrdersController < ApplicationController

  def index

  end

  def show #Show order for each user

  end
  
  
  def new 
    @order = Order.new
    @menus = Menu.all
    @priceplan = Priceplan.all
  end

  def create
    @order = Order.new(order_params)
    if @order.save
      redirect_to orders_url
    else
      render :new
    end
  end

  private
  def order_params
    params.require(:orders).permit(:custname, :contactnumber, :custaddress, :email, :deliveryDate)
  end
  

end
