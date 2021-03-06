require 'rails_helper'

RSpec.describe Contact, type: :model do
  before do
    @contact = FactoryBot.build(:contact)
  end

  describe 'フォームの送信' do
    it '全ての情報が正しく入力されていれば送信できる' do
      expect(@contact).to be_valid
    end

    it 'nameが空だと送信できない' do
      @contact.name = ''
      @contact.valid?
      expect(@contact.errors.full_messages).to include('お名前')
    end

    it 'mailが入力された場合、@を含まないと送信できない' do
      @contact.mail = 'sample'
      @contact.valid?
      expect(@contact.errors.full_messages).to include('メールアドレス')
    end

    it 'phone_numberが入力された場合、半角数字出ないと送信できない 例)文字列の場合' do
      @contact.phone_number = 'サンプル'
      @contact.valid?
      expect(@contact.errors.full_messages).to include('電話番号')
    end

    it 'phone_numberが入力された場合、半角数字出ないと送信できない 例)全角数字の場合' do
      @contact.phone_number = '０００００００００００'
      @contact.valid?
      expect(@contact.errors.full_messages).to include('電話番号')
    end

    it 'phone_numberが入力された場合、半角数字出ないと送信できない 例)半角英字の場合' do
      @contact.phone_number = 'sample'
      @contact.valid?
      expect(@contact.errors.full_messages).to include('電話番号')
    end

    it 'phone_numberが入力された場合、10桁か11桁でなければ送信できない 例)9桁以下の場合' do
      @contact.phone_number = '000000000'
      @contact.valid?
      expect(@contact.errors.full_messages).to include('電話番号')
    end

    it 'phone_numberが入力された場合、10桁か11桁でなければ送信できない 例)12桁以上の場合' do
      @contact.phone_number = '000000000000'
      @contact.valid?
      expect(@contact.errors.full_messages).to include('電話番号')
    end

    it 'category_idが1以外でないと送信できない' do
      @contact.category_id = 1
      @contact.valid?
      expect(@contact.errors.full_messages).to include('ご質問の種類')
    end

    it 'contentが空だと送信できない' do
      @contact.content = ''
      @contact.valid?
      expect(@contact.errors.full_messages).to include('内容')
    end

    it 'reply_idが1以外でないと送信できない' do
      @contact.reply_id = 1
      @contact.valid?
      expect(@contact.errors.full_messages).to include('返信の有無')
    end
  end
end
