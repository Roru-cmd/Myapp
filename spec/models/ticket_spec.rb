require 'rails_helper'

RSpec.describe Ticket, :type => :model do

    it "is valid with valid attributes" do
      @ticket1 = create(:ticket, :number)
      expect(@ticket1).to be_valid
    end  

    describe 'associations' do       
      it { should belong_to(:user) }
      it { should belong_to(:task).optional }
    end

    it "has a description" do
      ticket2 = build(:ticket, :number, ticket_d: nil)
      expect(ticket2).not_to be_valid
    end

    it "has a description not longer than 1000" do
      ticket2 = build(:ticket)
      expect(ticket2.validates_length_of(:ticket_d, :maximum => 1000))         
    end

end