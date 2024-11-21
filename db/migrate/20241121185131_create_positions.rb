class CreatePositions < ActiveRecord::Migration[8.0]
  def change
    create_table :positions do |t|
      t.references :user, null: false, foreign_key: true
      t.references :station, null: false, foreign_key: true
      t.integer :list_type, null: false
      t.integer :position, null: false

      t.timestamps
    end
    # Add unique constraints
    add_index :positions, [:station_id, :list_type, :position], unique: true
    add_index :positions, [:user_id, :station_id, :list_type], unique: true
  end
end
