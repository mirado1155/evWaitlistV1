class CreateUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :users do |t|
      t.string :username
      t.references :station, null: false, foreign_key: true
      t.integer :waitlist_level_preference

      t.timestamps
    end
  end
end
