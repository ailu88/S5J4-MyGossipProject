require 'rails_helper'

RSpec.describe User, type: :model do

    before(:each) do 
        @user = FactoryBot.create(:user)    
      end
    
      it "has a valid factory" do
        # teste toujours tes factories pour voir si elles sont valides
        expect(build(:user)).to be_valid
      end
    
      context "validation" do
    
        it "is valid with valid attributes" do
          expect(@user).to be_a(User)
        end
    
        describe "#first_name" do
          it { expect(@user).to validate_presence_of(:first_name) }
        end
    
        describe "#last_name" do
          it { expect(@user).to validate_presence_of(:last_name) }
        end

        describe "#email" do
        it { expect(@user).to validate_presence_of(:email) }
        it { expect(@user).to validate_uniqueness_of(:email) }
        it { is_expected.to allow_value("email@addresse.foo").for(:email) }
        it { is_expected.to_not allow_value("foo").for(:email) }
        it { is_expected.to_not allow_value("jean@examplecom").for(:email) }
        end

      context "associations" do
        it { expect(@user).to belong_to(:city) }
        it { expect(@user).to have_many(:gossips) }
        it { expect(@user).to have_many(:comments) }
        it { expect(@user).to have_many(:likes) }
        it { expect(@user).to have_many(:sent_messages).with_foreign_key(:sender_id) }
        it { expect(@user).to have_many(:received_messages).with_foreign_key(:recipient_id) }
      end
    
    end

end