require 'rails_helper'

RSpec.describe Ticket, :type => :model do

    it "is valid with valid attributes" do
      @ticket1 = create(:ticket)
      expect(@ticket1).to be_valid
    end  

    it "is not valid without a description"
    it "is not valid without a start_date" do
      @ticket1 = build(:ticket, start_date: nil)
      expect(@ticket1).not_to be_valid
    end


    it "is not valid without a end_date"

  end