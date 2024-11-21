class CreateStations < ActiveRecord::Migration[8.0]
  def change
    create_table :stations do |t|
      t.string :name

      t.timestamps
    end
  end
end
