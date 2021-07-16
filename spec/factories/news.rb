FactoryBot.define do
  factory :news do
    title { 'sample' }
    contents { 'sample' }

    association :user

    after(:build) do |news|
      news.image.attach(io: File.open('public/images/test.jpg'), filename: 'test.jpg')
    end

  end
end
