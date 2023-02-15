class UsersController < ApplicationController
  def show
    @user=User.find(params[:id])
    @reviews=Review.where(user_id: @user.id).order(id: "DESC")
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_path, notice: "ユーザーを作成しました"
    else
      render :new
    end
  end

  def profile
    @user=User.find_by(params[:id])
    @reviews=Review.where(user_id: @user.id)
  end
  
end
