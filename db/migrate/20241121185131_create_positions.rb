class CreatePositions < ActiveRecord::Migration[8.0]
  def change
    create_table :positions do |t|
      t.references :user, null: false, foreign_key: true
      t.references :station, null: false, foreign_key: true
      t.integer :list_type
      t.integer :position

      t.timestamps
    end
  end
end
