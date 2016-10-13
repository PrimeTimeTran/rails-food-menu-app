class Order < ApplicationRecord
  belongs_to :food_item
  validates :foot_item, :name, presence: true
end
