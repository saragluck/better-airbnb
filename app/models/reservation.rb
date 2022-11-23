class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :room
  has_many :reviews
  has_one :room_id 
end
