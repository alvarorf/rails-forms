class UsersController < ApplicationController
  def create
    # puts "params is: #{params}"
    # puts "And params[:email] is: #{params[:email]}"
    # @user = User.new(username: params[:username], email: params[:email], password: params[:password])
    @user = User.new(user_params)
    if @user.save
      # redirect_to new_user_path new_users_path
      redirect_to '/users/new'

    else
      render :new
    end
  end

  def new
  end

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end
