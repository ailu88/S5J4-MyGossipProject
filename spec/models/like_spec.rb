require 'rails_helper'

RSpec.describe Like, type: :model do

    before(:each) do 
        @like = FactoryBot.create(:like)    
      end
    
      it "has a valid factory" do
        # teste toujours tes factories pour voir si elles sont valides
        expect(build(:like)).to be_valid
      end
    
      context "validation" do
    
        it "is valid with valid attributes" do
          expect(@like).to be_a(Like)
        end
        
      context "associations" do
        it { expect(@like).to belong_to(:user) }
      end
    
    end

end