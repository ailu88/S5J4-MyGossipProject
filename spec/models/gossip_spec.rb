require 'rails_helper'

RSpec.describe Gossip, type: :model do

    before(:each) do 
        @gossip = FactoryBot.create(:gossip)    
      end
    
      it "has a valid factory" do
        # teste toujours tes factories pour voir si elles sont valides
        expect(build(:gossip)).to be_valid
      end
    
      context "validation" do
    
        it "is valid with valid attributes" do
          expect(@gossip).to be_a(Gossip)
        end
    
        describe "#title" do
          it { expect(@gossip).to validate_presence_of(:title) }
        end
    
        describe "#content" do
          it { expect(@gossip).to validate_presence_of(:content) }
        end

      context "associations" do
        it { expect(@gossip).to belong_to(:user) }
        it { expect(@gossip).to have_many(:comments) }
        it { expect(@gossip).to have_many(:likes) }
        it { expect(@gossip).to have_many(:tags).through(:tag_gossips) }
      end
    
    end

end