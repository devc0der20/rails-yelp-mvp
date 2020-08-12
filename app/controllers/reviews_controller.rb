class ReviewsController < ApplicationController
  before_action :find_restaurant, only: [:new, :create]

  def new
    @review = Review.new
  end

  def create
    @reveiw = Review.new(review_params)
    # raise
    @review.restaurant = @restaurant
    if @review.save
      redirect_to resraurant_path(@restaurant)
    else
      render :new
    end
  end

  private

  def find_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
