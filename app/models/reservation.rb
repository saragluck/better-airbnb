class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :room
  has_many :reviews

  has_many :addresses, through: :room
  has_many :prices, through: :room

  def total
    price * stay_length
  end
end
