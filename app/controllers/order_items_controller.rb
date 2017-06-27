class OrderItemsController < ApplicationController
  def index
    @order_items = OrderItem.all
  end

  def create
    @order = current_order
    @order_item = @order.order_items.build(order_item_params)
    @order.save
    redirect_to menu_path
  end

  def update
    @order = current_order
    @order_item = @order.order_items.find(params[:id])
    @order_item.update_attributes(order_item_params)
    @order_items = @order.order_items
    redirect_back(fallback_location: order_path)
  end

  def destroy
    @order = current_order
    @order_item = @order.order_items.find(params[:id])
    @order_item.destroy
    @order_items = @order.order_items
    redirect_back(fallback_location: order_path)
  end

  private

  def order_item_params
    params.require(:order_item).permit(:quantity, :food_item_id, :order_id, :unit_price)
  end
end
