class MenusController < ApplicationController
  before_action :authenticate_user!, except: [:show]
  before_action :set_menu, only: [:show, :update, :edit, :destroy]

  def new
    @menu = Menu.new
  end

  def create
    @menu = Menu.new(menu_params)
    if @menu.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @menu.update(menu_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    @menu.destroy
    redirect_to root_path
  end

  private

  def menu_params
    params.require(:menu).permit(:image, :name, :description, :price, :type_id).merge(user_id: current_user.id)
  end

  def set_menu
    @menu = Menu.find(params[:id])
  end
end
