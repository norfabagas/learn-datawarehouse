class CashierSession < ApplicationRecord
  belongs_to :cashier_user
  belongs_to :store
  validates_datetime :start_at
  validates_datetime :end_at
end
