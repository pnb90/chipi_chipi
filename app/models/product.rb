class Product < ApplicationRecord
  has_many :inventories
  has_many :stores, through: :inventories

  has_many :list_products
  has_many :lists, through: :list_products
end
