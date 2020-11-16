class Task < ApplicationRecord
  belongs_to :users, optional: true
  validates :t_title, presence: true,
            length: { maximum: 255 } 

end
