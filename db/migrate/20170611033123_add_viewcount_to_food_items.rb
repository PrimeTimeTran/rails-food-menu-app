class AddViewcountToFoodItems < ActiveRecord::Migration[5.0]
  def change
    add_column :food_items, :view_count, :integer
  end
end
