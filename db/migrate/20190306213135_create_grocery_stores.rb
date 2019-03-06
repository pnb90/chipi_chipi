class CreateGroceryStores < ActiveRecord::Migration[5.2]
  def change
    create_table :grocery_stores do |t|
      t.string :address
      t.string :hours

      t.timestamps
    end
  end
end
