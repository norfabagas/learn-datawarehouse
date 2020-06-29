class District < ApplicationRecord
  belongs_to :city
  has_many :sub_districts
  validates :name, presence: true
end
