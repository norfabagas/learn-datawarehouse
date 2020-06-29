class DebitCardList < ApplicationRecord
  has_many :debit_cards
  validates :name, presence: true
  validates :detail, presence: true
  validates :is_active, inclusion: [true, false]
end
