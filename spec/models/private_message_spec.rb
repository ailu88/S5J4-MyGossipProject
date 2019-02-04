require 'rails_helper'

RSpec.describe PrivateMessage, type: :model do

    before(:each) do 
        @privatemessage = FactoryBot.create(:private_message)    
      end
    
      it "has a valid factory" do
        # teste toujours tes factories pour voir si elles sont valides
        expect(build(:private_message)).to be_valid
      end
    
      context "validation" do
    
        it "is valid with valid attributes" do
          expect(@privatemessage).to be_a(PrivateMessage)
        end
    
        describe "#content" do
          it { expect(@privatemessage).to validate_presence_of(:content) }
        end
    
      context "associations" do
        it { expect(@privatemessage).to belong_to(:sender), class_name:User }
        it { expect(@privatemessage).to belong_to(:recipient), class_name:User }
      end
    
    end

end