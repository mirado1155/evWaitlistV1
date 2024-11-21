class CreateVehicles < ActiveRecord::Migration[8.0]
  def change
    create_table :vehicles do |t|
      t.references :user, null: false, foreign_key: true
      t.string :make
      t.string :model
      t.integer :year

      t.timestamps
    end
  end
end
