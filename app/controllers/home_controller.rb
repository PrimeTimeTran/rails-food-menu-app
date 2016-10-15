class HomeController < ApplicationController

  def index
    if params[:search]
      @food_items = FoodItem.where(['name ILIKE ?', "%#{params[:search]}%"])
    end
  end

  def menu
    if params[:section].present?
      @section = Section.where(name: params[:section]).first
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
