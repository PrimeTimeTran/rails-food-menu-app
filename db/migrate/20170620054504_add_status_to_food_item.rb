class AddStatusToFoodItem < ActiveRecord::Migration[5.0]
  def change
    add_column :food_items, :active, :boolean
  end
end
