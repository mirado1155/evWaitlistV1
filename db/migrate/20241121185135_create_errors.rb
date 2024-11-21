class CreateErrors < ActiveRecord::Migration[8.0]
  def change
    create_table :errors do |t|
      t.references :charger, null: false, foreign_key: true
      t.integer :error_code, null: false
      t.text :details, null: true

      t.timestamps, null: false
    end
  end
end
