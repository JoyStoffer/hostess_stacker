class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price
      t.integer :item_number
      t.references :category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
