class UsersController < ApplicationController
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to '/users/new'
    else
      render :new
    end
  end

  def new; end

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end
