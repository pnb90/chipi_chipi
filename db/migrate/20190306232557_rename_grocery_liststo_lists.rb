class RenameGroceryListstoLists < ActiveRecord::Migration[5.2]
  def change
    rename_column :grocery_lists, :grocery_store_id, :store_id
    rename_column :inventories, :grocery_store_id, :store_id
    rename_column :list_products, :grocery_list_id, :list_id

    rename_table('grocery_lists', 'lists')
    rename_table('grocery_stores', 'stores')
  end
end
