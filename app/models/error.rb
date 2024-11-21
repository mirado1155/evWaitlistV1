class Error < ApplicationRecord
  belongs_to :charger

  validates :error_code, presence: true
end
