class Customer < ApplicationRecord
  has_many :digital_wallets
  has_many :debit_cards
  has_many :credit_cards
  
  validates :customer_code, presence: true
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
  validates :age, numericality: { only_integer: true }
  validates :gender, inclusion: ["male", "female"]
  validates_datetime :verified_at
end
