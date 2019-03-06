class CreateListProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :list_products do |t|
      t.integer :grocery_list_id
      t.integer :product_id
      t.integer :quantity
      t.integer :status
      t.string :description

      t.timestamps
    end
  end
end
