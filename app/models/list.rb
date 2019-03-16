class List < ApplicationRecord
  has_many :stores
  has_many :list_products, dependent: :destroy
  has_many :products, through: :list_products
end
