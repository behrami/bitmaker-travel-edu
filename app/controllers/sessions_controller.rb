class SessionsController < ApplicationController

  def new
    # if request.xhr?
    #   render layout: false
    # end
  end

  def create
    user = User.find_by(user_name: params[:session][:user_name])

    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      redirect_to root_path
    else
      flash.now[:alert] = 'Unsuccessful Sign In'

      if request.xhr?
        render partial: 'error'
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
