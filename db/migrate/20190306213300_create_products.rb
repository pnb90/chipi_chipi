class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.string :weight
      t.string :upc_code

      t.timestamps
    end
  end
end
