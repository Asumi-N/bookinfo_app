class HomeController < ApplicationController
  def top
    @search = Review.ransack(params[:q])
    @posts = @search.result(distinct: true)
  end
end
