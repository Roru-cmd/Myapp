require 'rails_helper'

RSpec.describe Task, :type => :model do

    #before(:all) do
        #@task1 = create(:task)
    #end

    it "is valid with valid attributes" do
        @task1 = create(:task)
        expect(@task1).to be_valid
    end

    it "is not valid without title" do
        task2 = build(:task, t_title: nil)
        expect(task2).not_to be_valid
    end

    it "has title not longer then 255" do
        task2 = build(:task)
        expect(task2.validates_length_of(:t_title, :maximum => 255))       
    end

    #it "has many tickets" do
        #should respond_to(:tickets)
    #end

    describe 'associations' do        
        it { should have_many(:tickets) }
        it { should belong_to(:user).optional }
      end
   
    #it "belongs to user" do
        #task2 = build(:task)
        #expect(task2.reflect_on_association(:user).macro).to be (:belongs_to)
        #expect(task2.reflect_on_association(:user).macro).to eq :belongs_to
        #expect(task2).to belong_to(:user)
    #end
end
