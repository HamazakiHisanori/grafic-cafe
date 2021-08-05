class Type < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'ドリンク' },
    { id: 3, name: 'フード' },
    { id: 4, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :menus
end
