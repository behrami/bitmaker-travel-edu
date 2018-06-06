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
    @user.password_confirmation = params[:user][:password_confirmation]
    @user.user_name = params[:user][:user_name]

    if @user.save
      if request.xhr?
        render json: {sign_up: render_to_string('layouts/_header', layout: false)}
      else
        redirect_to root_path
      end

    else
      flash.now[:alert] = 'Unsuccessful Sign Up'
      if request.xhr?
        render json: {failed: render_to_string('_errorSignup', layout: false)}
      else
        render :new
      end

    end
  end

end
