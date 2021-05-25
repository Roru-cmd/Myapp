class Task < ApplicationRecord

  belongs_to :users, optional: true
  has_many :tickets, dependent: :destroy  
  validates :t_title, presence: true,
            length: { maximum: 255 } 
  default_scope -> { order(created_at: :desc) }  

end

