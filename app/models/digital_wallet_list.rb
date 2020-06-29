class DigitalWalletList < ApplicationRecord
  has_many :digital_wallets
  validates :name, presence: true
  validates :detail, presence: true
  validates :is_active, inclusion: [true, false]
end
