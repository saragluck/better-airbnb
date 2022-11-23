class Review < ApplicationRecord
  belongs_to :reservation
  belongs_to :user
  has_one :room_id, through: :reservations
end
