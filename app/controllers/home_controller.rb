class HomeController < ApplicationController
  def index
    if params[:search]
      @food_items = FoodItem.where(['name ILIKE ?', "%#{params[:search]}%"])
    end
  end

  def menu
    @order_item = OrderItem.new

    if params[:search]
      @food_items = FoodItem.search(params[:search], params[:current_page])
    elsif params[:section_id].present?
      @section = Section.find_by_id(params[:section_id])
      @food_items = @section.food_items.search(nil, params[:page])
    else
      @food_items = FoodItem.search(nil, params[:page])
    end

    if params[:sort_column]
      @food_items = @food_items.order("#{params[:sort_column]} #{params[:sort_direction]}")
    end
  end

  def contact_us
  end
end
