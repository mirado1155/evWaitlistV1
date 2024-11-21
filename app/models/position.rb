class Position < ApplicationRecord
  belongs_to :user
  belongs_to :station

  enum list_type: { ondeck: 0, waitlist: 1 }

  validates :position, presence: true, numericality: { greater_than_or_equal_to: 1 }
  validates :list_type, presence: true
  validates :user_id, uniqueness: true # Ensures a user can only have one position at a time
  validates :position, uniqueness: { scope: [:station_id, :list_type] }

  # Adjust positions dynamically before saving
  before_save :adjust_positions

  private

  def adjust_positions
    conflicting_positions = Position.where(station_id: station_id, list_type: list_type)
                                     .where("position >= ?", position)
                                     .where.not(id: id)
    conflicting_positions.update_all("position = position + 1")
  end
end
