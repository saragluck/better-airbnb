class AddStayLengthToReservations < ActiveRecord::Migration[7.0]
  def change
    add_column :reservations, :stay_length, :integer
  end
end
