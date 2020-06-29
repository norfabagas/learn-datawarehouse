class ReceiveOrderDetail < ApplicationRecord
  belongs_to :receive_order
  belongs_to :item
  validates :cogs, numericality: { only_integer: true }
  validates :price, numericality: { only_integer: true }
  validates :quantity, numericality: { only_integer: true }
end
