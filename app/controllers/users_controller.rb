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
      redirect_to edit_users_url
    else
      render :new
    end
  end

  def update
    if @user.update(user_params)
      flash[:notice] = "User '#{@user.username}' has been updated!"
      sleep(2.5)
      redirect_to new_users_url
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
