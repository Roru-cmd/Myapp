require 'rails_helper'

RSpec.describe User, :type => :model do

    # before(:all) do
    #     @user1 = create(:user)        
    # end

    it "is valid with valid attributes" do
        @user1 = create(:user, :number)
        expect(@user1).to be_valid
    end

    it "has uniqe username" do          
        user2 = build(:user, name: nil)
        expect(user2).not_to be_valid
    end

    it "is not valid without a time" do
        user2 = build(:user, :number, time: nil)
        expect(user2).not_to be_valid
    end

end