class UsersController < ApplicationController
  def show; end

  def index
    @users = User.all
  end

  def create
    @user = User.new(user_params)
    if @user.save
      sleep(2.5)
      redirect_to edit_users_url, notice: "User '#{@user.username}' has been created!"
    else
      render :new
    end
  end

  def update
    if @user.update(user_params)
      sleep(2.5)
      redirect_to new_users_url, notice: "User '#{@user.username}' has been updated!"
    else
      render :edit
    end
  end

  def new; end

  def edit; end

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end
