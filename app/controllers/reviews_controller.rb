class ReviewsController < ApplicationController
  before_action :set_q, only: [:index, :search]
  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.save
  end

  def search
    @results=@q.result
  end

  private
  def review_params
    params.require(:review).permit(:user_id, :title, :author, :publisher, :thought2, :isbn, thought1:[])
  end

  def set_q
    @q=Review.ransack(params[:q])
  end

end
