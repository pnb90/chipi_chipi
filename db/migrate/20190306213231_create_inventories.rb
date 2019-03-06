class CreateInventories < ActiveRecord::Migration[5.2]
  def change
    create_table :inventories do |t|
      t.integer :grocery_store_id
      t.integer :product_id
      t.integer :price

      t.timestamps
    end
  end
end
