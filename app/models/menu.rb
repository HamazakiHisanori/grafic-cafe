class Menu < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  with_options presence: true do
    validates :image
    validates :type_id, numericality: { other_than: 1, message: 'を選択してください' }
    validates :name, length: { maximum: 15 }
    validates :price, numericality: { only_integer: true, less_than_or_equal_to: 9999, allow_blank: true }
    validates :description, length: { maximum: 100 }
  end

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :type
end
