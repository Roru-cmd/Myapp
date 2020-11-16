class Task < ApplicationRecord
  belongs_to :users, optional: true
  validates :t_title, presence: true,
            length: { maximum: 255 } 

  def self.recent(max = 1)
    limit(max).order(created_at: :desc)
    end
end
