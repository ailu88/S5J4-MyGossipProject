require 'faker'

City.destroy_all
User.destroy_all
Gossip.destroy_all
Tag.destroy_all
PrivateMessage.destroy_all
Comment.destroy_all
Like.destroy_all
TagGossip.destroy_all

10.times do 
    city = City.create!(name: Faker::Address.city, zip_code:Faker::Address.zip_code)
   end
puts "10 villes ont été créées"
10.times do
    user = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city: City.all.sample, description: Faker::MostInterestingManInTheWorld.quote, email: Faker::Internet.email , age: rand(18..80))
    end
puts "10 users ont été créés"
20.times do
   gossip = Gossip.create!(title: Faker::Coffee.blend_name, content: Faker::MostInterestingManInTheWorld.quote, user: User.all.sample)
  end
puts "20 gossips ont été créés"
10.times do
   tag = Tag.create!(title: Faker::HarryPotter.spell)
  end
puts "10 tags ont été créées"
20.times do
   privatemessage = PrivateMessage.create!(recipient: User.all.sample, sender: User.all.sample, content: Faker::MostInterestingManInTheWorld.quote)
  end
puts "20 messages privés ont été créés"
20.times do
   comment = Comment.create!(user: User.all.sample, content: Faker::MostInterestingManInTheWorld.quote, gossip: Gossip.all.sample)
  end
puts "20 comments ont été créés"
10.times do
   like = Like.create!(user: User.all.sample, gossip: Gossip.all.sample)
    end
puts "10 likes de gossip ont été créés"
10.times do
     like = Like.create!(user: User.all.sample, comment: Comment.all.sample)
    end
puts "10 likes de comment ont été créés"
20.times do
   taggossip = TagGossip.create!(tag: Tag.all.sample, gossip: Gossip.all.sample)
  end
puts "20 tags ont été attribués aux gossips créés"