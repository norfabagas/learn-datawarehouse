class TransactionPayment < ApplicationRecord
  has_many :transaction_payment_details
  validates :payment_sum, presence: true, numericality: { only_integer: true }
end
