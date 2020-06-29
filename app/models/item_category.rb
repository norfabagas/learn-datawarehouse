class ItemCategory < ApplicationRecord
  validates :category_name, presence: true
end
