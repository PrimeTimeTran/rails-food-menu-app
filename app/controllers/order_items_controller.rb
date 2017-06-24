class OrderItemsController < ApplicationController
  def index
    @order_items = OrderItem.all
  end

  def create
    @order = current_order
    @order_item = @order.order_items.build(order_item_params)
    @order.save
  end

  def update
    @order = current_order
    @order_item = @order.order_items.find(params[:id])
    @order_item.update_attributes(order_item_params)
    @order_items = @order.order_items
  end

  def destroy
    @order = current_order
    @order_item = @order.order_items.find(params[:id])
    @order_item.destroy
    @order_items = @order.order_items
  end

  private

  def order_item_params
    params.require(:order_item).permit(:quantity, :food_item_id, :order_id)
  end
end
