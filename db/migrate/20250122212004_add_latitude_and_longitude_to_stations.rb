class AddLatitudeAndLongitudeToStations < ActiveRecord::Migration[8.0]
  def change
    add_column :stations, :latitude, :decimal, null: false
    add_column :stations, :longitude, :decimal, null: false
  end
end
