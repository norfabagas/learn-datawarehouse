class CreditCard < ApplicationRecord
  belongs_to :credit_card_list
  belongs_to :customer
  validates :holder_name, presence: true
  validates :cvc, presence: true
  validates_date :valid_until
  validates :is_active, inclusion: [true, false]
  validates :is_default, inclusion: [true, false]
end
