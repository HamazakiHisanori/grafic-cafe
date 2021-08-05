class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'ご予約について' },
    { id: 3, name: '不具合など' },
    { id: 4, name: 'ご要望など' },
    { id: 5, name: 'その他' }

  ]

  include ActiveHash::Associations
  has_many :contacts
end
