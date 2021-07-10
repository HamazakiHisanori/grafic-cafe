class Contact < ApplicationRecord
  with_options presence: true do
    validates :mail
    validates :phone_number, format: { with: /\A\d{10,11}\z/, message: 'は、ハイフン(-)なし10桁、又は11桁でお願い致します', allow_blank: true }
    validates :category_id, numericality: { other_than: 1, message: 'を選択してください' }
    validates :content
  end

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
end
