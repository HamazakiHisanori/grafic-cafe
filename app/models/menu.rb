class Menu < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  with_options presence: true do
    validates :image
    validates :type_id, numericality: { other_than: 1, message: 'を選択してください' }
    validates :name
    validates :price, numericality: { only_integer: true, allow_blank: true }
    validates :description
  end

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :type
end
