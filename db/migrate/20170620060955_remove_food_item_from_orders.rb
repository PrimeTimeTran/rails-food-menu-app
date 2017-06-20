class RemoveFoodItemFromOrders < ActiveRecord::Migration[5.0]
  def change
    remove_column :orders, :food_item_id, :integer
  end
end
