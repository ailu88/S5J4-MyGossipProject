FactoryBot.define do
  factory :gossip do
  	title { Faker::Coffee.blend_name }
    content { Faker::MostInterestingManInTheWorld.quote }
    user { FactoryBot.create(:user) }
  end
end
