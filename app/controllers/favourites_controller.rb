class FavouritesController < ApplicationController
  def index
  end

  def new
    @favourite = Favourite.new
  end

  def create
    @favourite = Favourite.new
    @hotel_id_favourite = params[:hotel_id]
    @current_user_id = current_user.id
    @temp_favourite = Favourite.create(hotel_id: @hotel_id_favourite, user_id: @current_user_id)

  end

  def destroy
  end
end
