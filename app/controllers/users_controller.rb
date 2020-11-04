class UsersController < ApplicationController

  def show; end

  def index
    @users = User.all
  end
  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "User '#{@user.username}' has been created!"
      sleep(2.5)
      redirect_to @user
    else
      render :new
    end
  end

  def new; end

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end
