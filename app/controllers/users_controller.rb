class UsersController < ApplicationController
  def show; end

  def index
    @users = User.all
  end

  def create
    @user = User.new(user_params)
    if @user.save
      sleep(2.5)
      redirect_to edit_users_path(@user.id), notice: "User '#{@user.username}' has been created!"
    else
      render :new
    end
  end

  def update
    @user = User.find(params[:id])
    if @user.save
      sleep(2.5)
      redirect_to new_users_path, notice: "User '#{@user.username}' has been updated!"
    else
      @user.errors.full_messages
      render :edit
    end
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end
