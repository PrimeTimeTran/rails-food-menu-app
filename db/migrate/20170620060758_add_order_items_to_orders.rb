class AddOrderItemsToOrders < ActiveRecord::Migration[5.0]
  def change
    add_reference :orders, :order, foreign_key: true
  end
end
