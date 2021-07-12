class Contact < ApplicationRecord
  with_options presence: true do
    validates :content
    with_options numericality: { other_than: 1, message: 'を選択してください' } do
      validates :category_id
      validates :repley_id
    end
  end
  validates :mail #@マークが必要
  validates :phone_number, format: { with: /\A\d{10,11}\z/, message: 'は、ハイフン(-)なし10桁、又は11桁でお願い致します', allow_blank: true }

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :repley
end
