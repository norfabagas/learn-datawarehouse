class Cart < ApplicationRecord
  validates :discount, numericality: { only_integer: true }
end
