class DebitCard < ApplicationRecord
  belongs_to :debit_card_list
  belongs_to :customer
  validates :holder_name, presence: true
  validates :card_number, presence: true
  validates :is_active, inclusion: [true, false]
  validates :is_default, inclusion: [true, false]
end
