class Order < ApplicationRecord
  belongs_to :food_item
  validates :food_item, :name, :address, presence: true
  validates :phone, numericality: true
end
