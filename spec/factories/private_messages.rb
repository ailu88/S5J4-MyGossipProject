FactoryBot.define do
  factory :private_message do

    content { Faker::MostInterestingManInTheWorld.quote }
    sender { FactoryBot.create(:user) }
    recipient { FactoryBot.create(:user) }
    
  end
end
