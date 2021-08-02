class Contact < ApplicationRecord
  with_options presence: { message: '' }do
    validates :name
    validates :content
    with_options numericality: { other_than: 1, message: '' } do
      validates :category_id
      validates :reply_id
    end
  end

  validates :mail, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: '', allow_blank: true }

  validates :phone_number, format: { with: /\A\d{10,11}\z/, message: '', allow_blank: true }


  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :reply
end
