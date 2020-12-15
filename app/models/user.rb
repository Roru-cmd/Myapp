class User < ApplicationRecord
  has_many :tasks, dependent: :destroy
  validates :name, presence: true, uniqueness: true, 
            length: { maximum: 50 }
  has_many :tickets, dependent: :destroy
  #has_many :tickets, through: :tasks, dependent: :destroy
end
