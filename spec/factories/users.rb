FactoryBot.define do
  factory :user do
    name { 'sample' }
    email { Faker::Internet.free_email }
    password { 'secretcode' }
    password_confirmation { 'secretcode' }
  end
end
