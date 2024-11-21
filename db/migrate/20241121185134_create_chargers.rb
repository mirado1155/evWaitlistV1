class CreateChargers < ActiveRecord::Migration[8.0]
  def change
    create_table :chargers do |t|
      t.references :station, null: false, foreign_key: true
      t.integer :level, null: false
      t.integer :status, null: false

      t.timestamps, null: false
    end
  end
end
