class Cart < ApplicationRecord
  validates :discount, no_presence: true, numericality: { only_integer: true }
end
