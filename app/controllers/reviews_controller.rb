class ReviewsController < ApplicationController
  before_action :set_q, only: [:index, :search]
  def new
    @review = Review.new
    @tags = Tag.all
  end

  def create
    @review = Review.new(review_params)
    @tag_ids=params[:review][:tag_ids]
    if @review.save
      @tag_ids.each do |tag_id|
        tag=Tag.find(tag_id)
        @review.tags << tag
      end
      redirect_to ("/reviews/#{@review.id}")
    else
      render 'reviews/new', status: :unprocessable_entity
   end
  end

  def show
    @review=Review.find(params[:id])
    @anotherReviews=Review.where(isbn: @review.isbn)
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
