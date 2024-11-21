class User < ApplicationRecord
  belongs_to :station, optional: true
  has_many :vehicles, dependent: :destroy
  has_one :position, dependent: :destroy

  validates :username, presence: true
end
