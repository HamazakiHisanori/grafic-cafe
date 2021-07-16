class News < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  with_options presence: true do
    validates :image
    validates :title
    validates :contents
  end
end
