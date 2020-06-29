class Address < ApplicationRecord
  belongs_to :customer
  belongs_to :village
  belongs_to :postal_code
  validates :full_address, presence: true
  validates :address_hint, presence: true
  validates :is_active, inclusion: [true, false]
  validates :is_default, inclusion: [true, false]
end
