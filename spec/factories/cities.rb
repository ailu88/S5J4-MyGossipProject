FactoryBot.define do
  factory :city do
      name { Faker::Address.city }
      zip_code { "75005" }
  end
end
