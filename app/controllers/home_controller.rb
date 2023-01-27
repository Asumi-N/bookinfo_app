class HomeController < ApplicationController
  def top
    @q = Review.ransack(params[:q])
    @results = @q.result(distinct: true)
  end

  private
    def review_params
      params.require(:review).permit(:title, :autohr, :thought2, thought1: [] )
    end
end
