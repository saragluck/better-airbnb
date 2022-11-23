class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :room
  has_many :reviews

  has_many :addresses, through: :room
  has_many :prices, through: :room

  # def total
  #   room = Room.find_by(id: Reservation.room_id)
  #   price = room.price
  #   price * days
  # end
end
