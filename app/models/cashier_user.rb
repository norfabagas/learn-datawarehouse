class CashierUser < ApplicationRecord
  validates :identity_number, presence: true
  validates :name, presence: true
  validates :username, presence: true, uniqueness: true
  validates :password, presence: true
end
