class CreditCardList < ApplicationRecord
  has_many :credit_cards
  validates :name, presence: true
  validates :detail, presence: true
  validates :is_active, inclusion: [true, false]
end
