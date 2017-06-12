class AddUserToFoodItems < ActiveRecord::Migration[5.0]
  def change
    add_column :food_items, :user_id, :integer
  end
end
