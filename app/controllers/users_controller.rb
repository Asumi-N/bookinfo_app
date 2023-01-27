class UsersController < ApplicationController
  def show
    @user=User.find(params[:id])
    @reviews=Review.where(user_id: @user.id)
  end

  def profile
    @user=User.find_by(params[:id])
    @reviews=Review.where(user_id: @user.id)
  end
  
end
