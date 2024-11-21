class CreateStations < ActiveRecord::Migration[8.0]
  def change
    create_table :stations do |t|
      t.string :name, null: false

      t.timestamps, null: false
    end
  end
end
