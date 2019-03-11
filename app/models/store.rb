class Store < ApplicationRecord
  has_one :inventory
  has_many :products, through: :inventory

  has_many :lists

  def in_stock?
    Product.all.select{|product| product.inventories.count > 0 }
  end
end
