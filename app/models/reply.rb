class Reply < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '返信を希望' },
    { id: 3, name: '返信を希望しない' }
  ]

  include ActiveHash::Associations
  has_many :contacts
end
