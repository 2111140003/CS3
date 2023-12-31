class UsersController < ApplicationController
  def new
    @user = User.new
  end
  def create
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      redirect_to user_path, notice: "you have successfully"
    else
      render :new
    end
  end
  def show
  end
  private
  def user_params
    params.require(:user).permit(:uid,:password)
  end
end
