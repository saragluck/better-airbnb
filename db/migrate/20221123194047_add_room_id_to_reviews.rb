class AddRoomIdToReviews < ActiveRecord::Migration[7.0]
  def change
    add_column :reviews, :room_id, :integer
  end
end
