class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(user_name: params[:session][:user_name])

    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      if request.xhr?
        render json: {sign_in: 'Passed Sign In'}
      else
        redirect_to root_path
      end

    else
      flash.now[:alert] = 'Unsuccessful Sign In'
      if request.xhr?
        render json: {failed: 'Unsuccessful Sign In'}
      else
        render :new
      end

    end

  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = 'Successfully Signed Out'
    redirect_to root_path
  end
end
