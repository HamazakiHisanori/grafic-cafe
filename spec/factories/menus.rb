FactoryBot.define do
  factory :menu do
    name { 'sample' }
    description { 'sample' }
    price { 100 }

    association :user

    after(:build) do |menu|
      menu.image.attach(io: File.open('public/images/test.jpg'), filename: 'test.jpg')
    end
  end
end

