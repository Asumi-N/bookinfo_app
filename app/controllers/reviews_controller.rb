class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.save
  end

  def review_params
    params.require(:review).permit(:title, :author, :publisher, :thought2, :isbn, thought1:[])
  end
end
