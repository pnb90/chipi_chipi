class DefaultQuantityToOne < ActiveRecord::Migration[5.2]
  def change
    change_column :list_products, :quantity, :integer, default: 1
  end
end
