class Ticket < ApplicationRecord
  belongs_to :user
  belongs_to :task
  has_many :tasks
end
