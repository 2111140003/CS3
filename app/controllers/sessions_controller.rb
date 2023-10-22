class SessionsController < ApplicationController
  def new
  end
  def create
    user = User.find_by_uid(params[:uid])
    if user && user.authenticate(params[:password])
      session[:user_id]=user.id
      redirect_to user_path , notice: "you have successfully"
    else
      flash.now[:alert]="uid or password is invalid"
    end
  end
  def destroy
    session[:user_id]=nil
    redirect_to root_path, notice: "logged out"
  end
end
