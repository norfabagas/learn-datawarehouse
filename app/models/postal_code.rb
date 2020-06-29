class PostalCode < ApplicationRecord
  belongs_to :village
  has_many :addresses
  validates :post_code, presence: true
end
