class Ticket < ApplicationRecord
  belongs_to :user
  belongs_to :task, optional: true 
  #validates :task_id, presence: true
  default_scope -> { order(created_at: :desc) }
end
