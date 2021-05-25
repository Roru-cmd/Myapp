require 'rails_helper'

RSpec.describe Ticket, :type => :model do

    it "is valid with valid attributes" do
      @ticket1 = create(:ticket, :number)
      expect(@ticket1).to be_valid
    end  

    it "has a description" do
      ticket2 = build(:ticket, :number, ticket_d: nil)
      expect(ticket2).not_to be_valid
    end

    it "is not valid without a start_date" do
      ticket2 = build(:ticket, ticket_start: nil)
      expect(ticket2).not_to be_valid
    end


    it "is not valid without a end_date"

  end