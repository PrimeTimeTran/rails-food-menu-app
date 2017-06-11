class OrdersController < ApplicationController

  def new
    @food_item = FoodItem.find params[:food_item_id]
  end

  def create
    @food_item = FoodItem.find params[:food_item_id]

    @order = Order.new(order_params)
    @order.food_item = @food_item

    if @order.save
      flash[:success] = "Order Submitted. Thank you!"
      redirect_to food_item_order_path(@food_item, @order)
    else
      flash[:error] = flash[:error] = @order.errors.full_messages.to_sentence
      render 'new'
    end
  end

  def show
    @food_item = FoodItem.find params[:food_item_id]
    @price = @food_item.price
    @order = Order.find params[:id]
  end

  private
  def order_params
    params.require(:order).permit(:name, :phone, :address)
  end
end
