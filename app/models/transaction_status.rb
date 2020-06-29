class TransactionStatus < ApplicationRecord
  validates :status_name, presence: true
end
