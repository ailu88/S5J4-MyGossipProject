require 'rails_helper'

RSpec.describe City, type: :model do

    before(:each) do 
        @city = FactoryBot.create(:city)    
      end
    
      it "has a valid factory" do
        # teste toujours tes factories pour voir si elles sont valides
        expect(build(:city)).to be_valid
      end
    
      context "validation" do
    
        it "is valid with valid attributes" do
          expect(@city).to be_a(City)
        end
    
        describe "#name" do
          it { expect(@city).to validate_presence_of(:name) }
        end
    
        describe "#zip_code" do
        it { expect(@city).to validate_length_of(:zip_code).is_at_least(3) }
      end

      context "associations" do
        it { expect(@city).to have_many(:users) }
      end
    
    end

end