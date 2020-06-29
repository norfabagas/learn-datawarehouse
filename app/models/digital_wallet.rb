class DigitalWallet < ApplicationRecord
  belongs_to :digital_wallet_list
  belongs_to :customer
  validates :name, presence: true
  validates :detail, presence: true
  validates :is_default, inclusion: [true, false]
  validates :is_active, inclusion: [true, false]
end
