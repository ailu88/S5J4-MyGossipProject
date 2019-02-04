require 'rails_helper'

RSpec.describe Comment, type: :model do

    before(:each) do 
        @comment = FactoryBot.create(:comment)    
      end
    
      it "has a valid factory" do
        # teste toujours tes factories pour voir si elles sont valides
        expect(build(:comment)).to be_valid
      end
    
      context "validation" do
    
        it "is valid with valid attributes" do
          expect(@comment).to be_a(Comment)
        end
    
        describe "#content" do
          it { expect(@comment).to validate_presence_of(:content) }
        end
    
      context "associations" do
        it { expect(@comment).to belong_to(:user) }
        it { expect(@comment).to belong_to(:gossip) }
        it { expect(@comment).to have_many(:likes) }
      end
    
    end

end