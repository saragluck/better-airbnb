class RemoveStayLengthFromReservations < ActiveRecord::Migration[7.0]
  def change
    remove_column :reservations, :stay_length, :string
  end
end
