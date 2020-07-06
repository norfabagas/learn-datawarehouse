class CartDetail < ApplicationRecord
  belongs_to :cart
  belongs_to :receive_order_detail
  validates :quantity, numericality: { only_integer: true }
end
