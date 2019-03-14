class UpdatePriceToDecimal < ActiveRecord::Migration[5.2]
  def change
    change_column :inventories, :price, :decimal, precision: 7, scale: 2
  end
end
