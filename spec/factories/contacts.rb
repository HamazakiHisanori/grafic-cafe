FactoryBot.define do
  factory :contact do
    name { 'sample' }
    mail { 'sample@sample' }
    phone_number { '00000000000' }
    category_id { 2 }
    content { 'テストコードを書いています' }
    reply_id { 2 }
  end
end
