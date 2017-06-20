class AddTotalToOrders < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :subtotal, :decimal, precision: 12, scale: 3
    add_column :orders, :tax, :decimal, precision: 12, scale: 3
    add_column :orders, :shipping, :decimal, precision: 12, scale: 3
    add_column :orders, :total, :decimal, precision: 12, scale: 3
    add_reference :orders, :order_status, foreign_key: true
  end
end
