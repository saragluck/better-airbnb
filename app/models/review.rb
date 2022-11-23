class Review < ApplicationRecord
  belongs_to :reservation
  belongs_to :user

  has_many :room_ids, through: :reservations
end
