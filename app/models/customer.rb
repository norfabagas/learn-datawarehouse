class Customer < ApplicationRecord
  validates :customer_code, presence: true
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
  validates :age, numericality: { only_integer: true }
  validates :gender, inclusion: ["male", "female"]
  validates_datetime :verified_at
end
