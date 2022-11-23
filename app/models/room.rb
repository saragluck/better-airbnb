class Room < ApplicationRecord
  belongs_to :user
  has_many :room_images
  has_many :reservations
  has_many :comments, through: :reviews
  has_many :ratings, through: :reviews
  has_one :room_id
end
