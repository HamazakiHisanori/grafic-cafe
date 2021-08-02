class Menu < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  with_options presence: { message: '' } do
    validates :type_id, numericality: { other_than: 1, message: ''}
    validates :image
    validates :name, length: { maximum: 15, message: '' }
    validates :price, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 9999, allow_blank: true, message: '' }
    validates :description, length: { maximum: 180, message: '' }
  end

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :type
end
