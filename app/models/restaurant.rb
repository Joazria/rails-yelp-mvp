class Restaurant < ApplicationRecord
  has_many :reviews
  validates :rating, inclusion: 1..5
  validates :content, presence: true
end
