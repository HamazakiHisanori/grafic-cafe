class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :menus

  with_options presence: true do
    validates :name
    validates :password,
              format: { with: /\Asecretcode\z/, message: 'パスワードが違います', allow_blank: true }
  end
end

