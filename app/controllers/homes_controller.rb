class HomesController < ApplicationController

  def index
    @news = News.order('created_at DESC')
  end

  def access
  end

end
