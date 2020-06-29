class TransactionType < ApplicationRecord
  validates :transaction_name, presence: true
  validates :is_active, inclusion: [true, false]
end
