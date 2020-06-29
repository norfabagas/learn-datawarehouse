class ReceiveOrder < ApplicationRecord
  belongs_to :store
  has_many :receive_order_details
  validates_datetime :receive_date
end
