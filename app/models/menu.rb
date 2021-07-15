class Menu < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  with_options presence: true do
    validates :image
    validates :name
    validates :price, numericality: { only_integer: true, allow_blank: true }
    validates :description
  end

end
