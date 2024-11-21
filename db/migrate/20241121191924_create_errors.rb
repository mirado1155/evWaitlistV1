class CreateErrors < ActiveRecord::Migration[8.0]
  def change
    create_table :errors do |t|
      t.references :charger, null: false, foreign_key: true
      t.integer :error_code
      t.text :details

      t.timestamps
    end
  end
end
