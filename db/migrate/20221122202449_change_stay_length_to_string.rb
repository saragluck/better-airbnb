class ChangeStayLengthToString < ActiveRecord::Migration[7.0]
  def change
    change_column :reservations, :stay_length, :string
  end
end
