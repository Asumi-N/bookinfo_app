class UsersController < ApplicationController
  def show
    @user=User.find_by(id: current_user.id)
    @reviews=Review.where(user_id: @user.id)
  end
  
end
