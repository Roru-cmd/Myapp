class Ticket < ApplicationRecord
  belongs_to :user
  belongs_to :task, optional: true 
  validates :task_id, presence: true
  validates :ticket_d, presence: true,
            length: { maximum: 1000 } 
  default_scope -> { order(created_at: :desc) }
  
end
