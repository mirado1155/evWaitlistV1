class Charger < ApplicationRecord
  belongs_to :station

  enum status: { available: 0, in_use: 1, maintenance: 2 }

  validates :level, inclusion: { in: [150, 350] }
end
