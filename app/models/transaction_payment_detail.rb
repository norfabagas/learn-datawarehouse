class TransactionPaymentDetail < ApplicationRecord
  belongs_to :transaction_payment
  validates_datetime :paid_at
  validates :invoice_number, presence: true
  validates :amount_paid, numericality: { only_integer: true }
  validates :payment_type_id, numericality: { only_integer: true }
  validates :payment_type, inclusion: ["credit_card", "debit_card", "digital_wallet"]
end
