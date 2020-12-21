class Task < ApplicationRecord
  belongs_to :users, optional: true
  default_scope -> { order(created_at: :desc) }
  validates :t_title, presence: true,
            length: { maximum: 255 } 
  has_many :tickets, dependent: :destroy

end
