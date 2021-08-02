class News < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  with_options presence: { message: '' } do
    validates :image
    validates :title, length: { maximum: 40, message: '' }
    validates :contents, length: { maximum: 260, message: '' }
  end
end
