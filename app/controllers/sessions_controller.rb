class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(user_name: params[:session][:user_name])

    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      redirect_to root_path
    else
      flash.now[:alert] = 'Unsuccessful Sign In'
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = 'Successfully Signed Out'
    redirect_to root_path
  end
end
