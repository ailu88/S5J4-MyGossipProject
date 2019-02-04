FactoryBot.define do
  factory :user do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    email { Faker::Internet.email }
    age { 25 }
    description { "Father, Husband, President of the United States." }
    city { FactoryBot.create(:city) }
  end
end
