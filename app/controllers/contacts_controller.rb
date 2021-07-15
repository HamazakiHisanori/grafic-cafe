class ContactsController < ApplicationController

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

  private

  def contact_params
    params.require(:contact).permit(:email, :phone_number, :category_id, :content, :reply_id)
  end

end
