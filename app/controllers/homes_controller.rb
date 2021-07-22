class HomesController < ApplicationController

  def index
    @news = News.order('created_at DESC')
    @menus = Menu.order('created_at DESC')
    @contact = Contact.new
  end

  def create
    @news = News.order('created_at DESC')
    @menus = Menu.order('created_at DESC')
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
    params.require(:contact).permit(:name, :email, :phone_number, :category_id, :content, :reply_id)
  end

end
