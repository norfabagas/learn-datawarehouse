class Village < ApplicationRecord
  belongs_to :sub_district
  has_many :postal_codes
  has_many :addresses
  validates :name, presence: true
end
