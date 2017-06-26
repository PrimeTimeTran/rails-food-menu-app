class ReviewsController < ApplicationController
  before_action :set_food_item

  def index
    @reviews = @food_item.reviews
  end

  def new
    @review = @food_item.reviews.build
  end

  def create
    @review = @food_item.reviews.new(review_params)
    @review.user_id = current_user.id
    if @review.save
      redirect_to food_item_path(@food_item)
    else
      render :new
    end
  end

  private
  def review_params
    params.require(:review).permit(:review, :stars)
  end

  def set_food_item
    @food_item = FoodItem.find(params[:food_item_id])
  end
end
