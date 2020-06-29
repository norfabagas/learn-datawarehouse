class SubDistrict < ApplicationRecord
  belongs_to :district
  has_many :villages
  validates :name, presence: true
end
