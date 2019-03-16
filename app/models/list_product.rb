class ListProduct < ApplicationRecord
  belongs_to :list
  belongs_to :product

  enum status: { added: 1, removed: 2, purchased: 3 }

  validates :quantity, numericality: { only_integer: true }

end
