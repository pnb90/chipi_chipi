class Store < ApplicationRecord
  has_one :inventory, dependent: :destroy
  has_many :products, through: :inventory

  has_many :lists


  def stock
    Product.all.select{|product| product.inventories.count > 0 }
  end

  def in_stock?
 
  end

end
