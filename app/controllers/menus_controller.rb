class MenusController < ApplicationController

  def new
    @menu = Menu.new
  end

  def create
    @menu = Menu.new(menu_params)
    if @menu.save
      redirect_to menus_path
    else
      render :new
    end
  end

  def index
    @menus = Menu.all
  end
  
  def destroy
    @menu = Menu.find(params[:id]).destroy
    redirect_to menus_path
  end
  

  private
  def menu_params
    params.require(:menu).permit(:item, :description, :img_location)
  end
  

end