class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'sample' },
    { id: 3, name: 'test' },
    { id: 4, name: 'hoge' },
  ]

  include ActiveHash::Associations
  has_many :contacts
end
