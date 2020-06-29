class CashierSession < ApplicationRecord
  belongs_to :cashier_user
  belongs_to :store
  validates_datetime :started_at
  validates_datetime :ended_at
end
