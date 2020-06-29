class Transaction < ApplicationRecord
  belongs_to :customer
  belongs_to :cart
  belongs_to :transaction_type
  belongs_to :transaction_status
  belongs_to :transaction_payment
  belongs_to :cashier_session
  validates :transaction_code, presence: true
  validates :transaction_reference, no_presence: true
  validates_datetime :void_at, no_presence: true
  validates_datetime :commited_at, no_presence: true
end
