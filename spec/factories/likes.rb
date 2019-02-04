FactoryBot.define do
  factory :like do

	comment { FactoryBot.create(:comment) }
    user { FactoryBot.create(:user) }
    gossip { FactoryBot.create(:gossip) }
    
  end
end
