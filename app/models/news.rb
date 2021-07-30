class News < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  with_options presence: true do
    validates :image
    validates :title, length: { maximum: 40 }
    validates :contents, length: { maximum: 300 }
  end
end
