class HomeController < ApplicationController

  def index
    if params[:search]
      @food_items = FoodItem.where(['name ILIKE ?', "%#{params[:search]}%"])
    end
  end

  def menu
    @order_item = OrderItem.new

    if params[:search]
      @food_items = FoodItem.where(['name ILIKE ?', "%#{params[:search]}%"])
    elsif params[:section_id].present?
      @section = Section.where(id: params[:section_id]).first
      @food_items = @section.food_items
    else
      @food_items = FoodItem.all
    end

    if params[:sort_column]
      @food_items = @food_items.order("#{params[:sort_column]} #{params[:sort_direction]}")
    end
  end

  def contact_us
  end
end
