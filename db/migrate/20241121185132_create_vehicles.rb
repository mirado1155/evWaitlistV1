class CreateVehicles < ActiveRecord::Migration[8.0]
  def change
    create_table :vehicles do |t|
      t.references :user, null: false, foreign_key: true
      t.string :make, null: false
      t.string :model, null: false
      t.integer :year, null: false

      t.timestamps
    end
  end
end
