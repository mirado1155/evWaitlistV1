class CreateUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :users do |t|
      t.string :username, null: false
      t.references :station, null: true, foreign_key: true
      t.integer :waitlist_level_preference, null: true

      t.timestamps, null: false
    end
  end
end
