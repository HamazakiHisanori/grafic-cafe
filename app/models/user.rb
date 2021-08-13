class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :menus
  has_many :news

  with_options presence: { message: '' } do
    validates :name, length: { maximum: 10, message: '' }
    validates :password,
              format: { with: /\Asecretcode\z/, message: '', allow_blank: true }
  end
end
