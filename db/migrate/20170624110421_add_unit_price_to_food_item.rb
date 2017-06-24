class AddUnitPriceToFoodItem < ActiveRecord::Migration[5.0]
  def change
    add_column :food_items, :unit_price, :decimal, precision: 12, scale: 3
  end
end
