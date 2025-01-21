class MakeVehicleFieldsNonNullable < ActiveRecord::Migration[8.0]
  def change
    change_column_null :vehicles, :make, false
    change_column_null :vehicles, :model, false
    change_column_null :vehicles, :year, false
  end
end
