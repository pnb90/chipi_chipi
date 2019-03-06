class CreateGroceryLists < ActiveRecord::Migration[5.2]
  def change
    create_table :grocery_lists do |t|
      t.integer :user_id
      t.integer :grocery_store_id
      t.string :name

      t.timestamps
    end
  end
end
