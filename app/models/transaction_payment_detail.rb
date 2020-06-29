class TransactionPaymentDetail < ApplicationRecord
  belongs_to :transaction_payment
  validates_datetime :invoice_date
  validates :invoice_number, presence: true
end
