FactoryBot.define do
  factory :comment do

    content { Faker::MostInterestingManInTheWorld.quote }
    user { FactoryBot.create(:user) }
    gossip { FactoryBot.create(:gossip) }
    
  end
end
