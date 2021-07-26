class MenusController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  before_action :set_menu, only: [:update, :edit, :destroy]


  def index
    @menus = Menu.order('created_at DESC')
  end

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

  def edit
  end

  def update
      if @menu.update(menu_params)
        redirect_to menu_path(@menu.id)
      else
        render :edit
      end
  end

  def destroy
    @menu.destroy
    redirect_to menus_path
  end

  private

  def menu_params
      params.require(:menu).permit(:image, :name, :description, :price).merge(user_id: current_user.id)
  end


  def set_menu
    @menu = Menu.find(params[:id])
  end


end
