class Vehicle < ApplicationRecord
  belongs_to :user

  validates :make, :model, :year, presence: true
end
