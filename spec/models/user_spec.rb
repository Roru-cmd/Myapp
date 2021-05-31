require 'rails_helper'

RSpec.describe User, :type => :model do

    # before(:all) do
    #     @user1 = create(:user)        
    # end

    it "is valid with valid attributes" do
        user1 = build(:user, :number)        
        expect(user1).to be_valid
    end

    it "has many tasks" do
        should respond_to(:tasks)
        should have_many(:tasks) 
    end

    describe 'associations' do        
        it { should have_many(:tickets) }        
      end

    it "has unique username" do          
        user2 = build(:user, :number)
        expect(user2).to be_valid
    end 

    it "has name not longer than 50" do
        user2 = build(:user)
        expect(user2.validates_length_of(:name, :maximum => 50))         
    end

    #it "is not valid without a time" do
        #user2 = build(:user, time: nil)
        #expect(user2).not_to be_valid
    #end

end