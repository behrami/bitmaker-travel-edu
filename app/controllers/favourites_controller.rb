class FavouritesController < ApplicationController
  def index
    @favourites= Favourite.all
  end

  def new
    @favourite = Favourite.new
  end

  def create
    @favourite = Favourite.new
    @hotel_id_favourite = params[:hotel_id]
    @current_user_id = current_user.id
    @temp_favourite = Favourite.create(hotel_id: @hotel_id_favourite, user_id: @current_user_id)

    if @temp_favourite.save
      redirect_to hotel_favourites_path
    end
  end

  def destroy
  end
end
