require 'rails_helper'

RSpec.describe Menu, type: :model do
  before do
    @menu = FactoryBot.build(:menu)
  end

  describe 'メニューの追加' do

    it '全ての情報が正しく入力されていれば追加できる' do
      expect(@menu).to be_valid
    end

    it 'imageが空だと追加できない' do
      @menu.image = nil
      @menu.valid?
      expect(@menu.errors.full_messages).to include('画像を入力してください')
    end

    it 'type_idが1以外でないと追加できない' do
      @menu.type_id = 1
      @menu.valid?
      expect(@menu.errors.full_messages).to include('メニューの種類を選択してください')
    end

    it 'nameが空だと追加できない' do
      @menu.name = ''
      @menu.valid?
      expect(@menu.errors.full_messages).to include('名前を入力してください')
    end

    it 'descriptionが空だと追加できない' do
      @menu.description = ''
      @menu.valid?
      expect(@menu.errors.full_messages).to include('説明文を入力してください')
    end

    it 'priceが空だと追加できない' do
      @menu.price = ''
      @menu.valid?
      expect(@menu.errors.full_messages).to include('値段を入力してください')
    end

    it 'priceが全角数字では追加できない' do
      @menu.price = '１００００'
      @menu.valid?
      expect(@menu.errors.full_messages).to include('値段は数値で入力してください')
    end

    it 'priceが半角英字では追加できない' do
      @menu.price = 'sample'
      @menu.valid?
      expect(@menu.errors.full_messages).to include('値段は数値で入力してください')
    end

    it 'priceが半角英数字混合では追加できない' do
      @menu.price = 'sample1000'
      @menu.valid?
      expect(@menu.errors.full_messages).to include('値段は数値で入力してください')
    end

    it 'userが紐付いていないと追加できない' do
      @menu.user = nil
      @menu.valid?
      expect(@menu.errors.full_messages).to include('Userを入力してください')
    end

  end
end
