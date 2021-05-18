require 'rails_helper'

RSpec.describe Task, :type => :model do

    it "is valid with valid attributes" do
        @task1 = create(:task)
        expect(@task1).to be_valid
    end

    it "is not valid without title" do
        task2 = build(:task, t_title: nil)
        expect(task2).to be_valid
    end

    it "is not valid without a description"

end