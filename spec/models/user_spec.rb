require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe '新規登録' do
    it '全ての情報が正しく入力されていれば登録できる' do
      expect(@user).to be_valid
    end

    it 'nameが空だと登録できない' do
      @user.name = ''
      @user.valid?
      expect(@user.errors.full_messages).to include('名前')
    end

    it 'nameが11字以上だとだと登録できない' do
      @user.name = 'a' * 11
      @user.valid?
      expect(@user.errors.full_messages).to include('名前')
    end

    it 'emailが空だと登録できない' do
      @user.email = ''
      @user.valid?
      expect(@user.errors.full_messages).to include('メールアドレスを入力してください')
    end

    it '重複したemailでは登録できない' do
      @user.save
      another_user = FactoryBot.build(:user, email: @user.email)
      another_user.valid?
      expect(another_user.errors.full_messages).to include('メールアドレスはすでに存在します')
    end

    it 'passwordが空だと登録できない' do
      @user.password = ''
      @user.valid?
      expect(@user.errors.full_messages).to include('パスワード')
    end

    it 'passwordが指定と完全に一致しないと登録できない例(1' do
      @user.password = 'secretcode1'
      @user.valid?
      expect(@user.errors.full_messages).to include('パスワード')
    end

    it 'passwordが指定と完全に一致しないと登録できない例(2' do
      @user.password = 'secretcod'
      @user.valid?
      expect(@user.errors.full_messages).to include('パスワード')
    end

    it 'passwordが指定と完全に一致しないと登録できない例(3' do
      @user.password = 'SECRETCODE'
      @user.valid?
      expect(@user.errors.full_messages).to include('パスワード')
    end

    it 'password_confirmationが空だと登録できない' do
      @user.password_confirmation = ''
      @user.valid?
      expect(@user.errors.full_messages).to include('パスワード（確認用）とパスワードの入力が一致しません')
    end

    it 'passwordとpassword_confirmationが一致しないと登録できない' do
      @user.password_confirmation = 'secretcode1'
      @user.valid?
      expect(@user.errors.full_messages).to include('パスワード（確認用）とパスワードの入力が一致しません')
    end
  end
end
