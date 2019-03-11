class Store < ApplicationRecord
  has_one :inventory

  has_many :lists
end
