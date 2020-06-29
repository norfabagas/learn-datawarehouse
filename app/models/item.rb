class Item < ApplicationRecord
  belongs_to :item_category
  has_many :receive_order_details
  validates :name, presence: true
  validates :sap_code, uniqueness: true, numericality: { only_integer: true }
  validates :is_active, inclusion: [true, false]
end
