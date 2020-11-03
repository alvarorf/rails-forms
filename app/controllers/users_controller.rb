class UsersController < ApplicationController
    def create
        puts "params is: #{params}"
        puts "And params[:email] is: #{params[:email]}"
        @user = User.new(username: params[:username], email: params[:email], password: params[:password])
        if @user.save
            redirect_to(new_user_path)
        else
            render :new
        end
    end

    def new
    end
end
