FactoryBot.define do
  factory :tag do
  	title { Faker::Coffee.blend_name }
  end
end
