class Store < ApplicationRecord
  has_many :receive_orders
  validates :name, presence: true
  validates :description, presence: true
  validates :is_active, inclusion: [true, false]
end
