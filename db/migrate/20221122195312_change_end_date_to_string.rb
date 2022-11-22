class ChangeEndDateToString < ActiveRecord::Migration[7.0]
  def change
    change_column :reservations, :end_date, :string
  end
end
