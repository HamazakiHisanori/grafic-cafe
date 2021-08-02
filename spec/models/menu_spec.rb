require 'rails_helper'

RSpec.describe Menu, type: :model do
  before do
    @menu = FactoryBot.build(:menu)
  end

  describe 'メニューの追加' do

    it '全ての情報が正しく入力されていれば追加できる' do
      expect(@menu).to be_valid
    end

    it 'type_idが1以外でないと追加できない' do
      @menu.type_id = 1
      @menu.valid?
      expect(@menu.errors.full_messages).to include('メニューの種類')
    end

    it 'imageが空だと追加できない' do
      @menu.image = nil
      @menu.valid?
      expect(@menu.errors.full_messages).to include('画像')
    end

    it 'nameが空だと追加できない' do
      @menu.name = ''
      @menu.valid?
      expect(@menu.errors.full_messages).to include('名前')
    end

    it 'nameが16字以上だと追加できない' do
      @menu.name = 'a' * 16
      @menu.valid?
      expect(@menu.errors.full_messages).to include('名前')
    end

    it 'priceが空だと追加できない' do
      @menu.price = ''
      @menu.valid?
      expect(@menu.errors.full_messages).to include('値段')
    end

    it 'priceが全角数字では追加できない' do
      @menu.price = '１００００'
      @menu.valid?
      expect(@menu.errors.full_messages).to include('値段')
    end

    it 'priceが半角英字では追加できない' do
      @menu.price = 'sample'
      @menu.valid?
      expect(@menu.errors.full_messages).to include('値段')
    end

    it 'priceが半角英数字混合では追加できない' do
      @menu.price = 'sample1000'
      @menu.valid?
      expect(@menu.errors.full_messages).to include('値段')
    end

    it 'priceが0では追加できない' do
      @menu.price = 0
      @menu.valid?
      expect(@menu.errors.full_messages).to include('値段')
    end

    it 'priceが10000以上では追加できない' do
      @menu.price = 10000
      @menu.valid?
      expect(@menu.errors.full_messages).to include('値段')
    end

    it 'descriptionが空だと追加できない' do
      @menu.description = ''
      @menu.valid?
      expect(@menu.errors.full_messages).to include('説明文')
    end

    it 'descriptionが181字以上だと追加できない' do
      @menu.description = 'a' * 181
      @menu.valid?
      expect(@menu.errors.full_messages).to include('説明文')
    end

    it 'userが紐付いていないと追加できない' do
      @menu.user = nil
      @menu.valid?
      expect(@menu.errors.full_messages).to include('Userを入力してください')
    end

  end
end
