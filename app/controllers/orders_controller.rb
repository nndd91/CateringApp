class OrdersController < ApplicationController

  def index

  end

  # Show order for each user
  def show
    @orders = Order.all
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
    params.require(:order).permit(:custname, :contactnumber, :custaddress, :email, :deliveryDate)
  end
  

end
