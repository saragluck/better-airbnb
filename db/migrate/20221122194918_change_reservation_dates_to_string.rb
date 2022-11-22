class ChangeReservationDatesToString < ActiveRecord::Migration[7.0]
  def change
    change_column :reservations, :start_date, :string
  end
end
