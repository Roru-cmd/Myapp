require 'rails_helper'

RSpec.describe Ticket, :type => :model do

  it "is valid with valid attributes" do
    @ticket1 = create(:ticket)
    expect(ticket1).to be_valid
end   
    it "is not valid without a description"
    it "is not valid without a start_date"
    it "is not valid without a end_date"

  end