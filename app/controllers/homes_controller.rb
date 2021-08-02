class HomesController < ApplicationController
  before_action :set_params, only: [:index, :create]


  def index
    @contact = Contact.new

  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to root_path
    else
      render :index
    end
  end

  def worker
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :mail, :phone_number, :category_id, :content, :reply_id)
  end

  def set_params
    @news = News.order('created_at DESC')
    @menus_drink = Menu.where(type_id: name='2')
    @menus_food =  Menu.where(type_id: name='3')
    @menus_option =  Menu.where(type_id: name='4')
  end

end
