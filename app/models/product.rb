class Product < ApplicationRecord
  has_many :inventories, dependent: :destroy
  has_many :stores, through: :inventories

  has_many :list_products, dependent: :destroy
  has_many :lists, through: :list_products
end
