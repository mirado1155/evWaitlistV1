class Station < ApplicationRecord
  has_many :chargers, dependent: :destroy
  has_many :positions, dependent: :destroy

  validates :name, presence: true
end
