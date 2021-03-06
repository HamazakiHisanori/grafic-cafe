require 'rails_helper'

RSpec.describe News, type: :model do
  before do
    @news = FactoryBot.build(:news)
  end

  describe 'ニュースの追加' do
    it '全ての情報が正しく入力されていれば追加できる' do
      expect(@news).to be_valid
    end

    it 'imageが空だと追加できない' do
      @news.image = nil
      @news.valid?
      expect(@news.errors.full_messages).to include('画像')
    end

    it 'titleが空だと追加できない' do
      @news.title = ''
      @news.valid?
      expect(@news.errors.full_messages).to include('タイトル')
    end

    it 'titleが41字以上だと追加できない' do
      @news.title = 'a' * 41
      @news.valid?
      expect(@news.errors.full_messages).to include('タイトル')
    end

    it 'contentsが空だと追加できない' do
      @news.contents = ''
      @news.valid?
      expect(@news.errors.full_messages).to include('内容')
    end

    it 'contentsが261字以上だと追加できない' do
      @news.contents = 'a' * 261
      @news.valid?
      expect(@news.errors.full_messages).to include('内容')
    end

    it 'userが紐付いていないと追加できない' do
      @news.user = nil
      @news.valid?
      expect(@news.errors.full_messages).to include('Userを入力してください')
    end
  end
end
