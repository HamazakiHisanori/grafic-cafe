class NewsController < ApplicationController
  before_action :authenticate_user!, except: [:show]
  before_action :set_news, only: [:show, :edit, :update, :destroy]

  def new
    @news = News.new
  end

  def create
    @news = News.new(news_params)
    @news.save
    if @news.save
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
    if @news.update(news_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    @news.destroy
    redirect_to root_path
  end

  private

  def news_params
    params.require(:news).permit(:image, :title, :contents).merge(user_id: current_user.id)
  end

  def set_news
    @news = News.find(params[:id])
  end
end
