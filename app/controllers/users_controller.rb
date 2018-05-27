class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new

    @user.first_name = params[:user][:first_name]
    @user.last_name = params[:user][:last_name]
    @user.email = params[:user][:email]
    @user.password = params[:user][:password]
    @user.user_name = params[:user][:user_name]

    if @user.save
      redirect_to root_path
    else
      flash.now[:alert] = 'Unsuccessful Sign Up'
      render :new
    end
  end

  def show
  end
end
