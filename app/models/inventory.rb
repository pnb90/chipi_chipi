class Inventory < ApplicationRecord
  has_many :products
  belongs_to :store

  validates :price, numericality: { only_integer: true }

end
