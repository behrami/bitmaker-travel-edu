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
    @temp_favourite = Favourite.new(hotel_id: @hotel_id_favourite, user_id: @current_user_id)

    @temp_favourite.save
    redirect_to favourites_path
  end

  def destroy
    @favourite_id = params[:id]
    @favourite = Favourite.find_by(id: @favourite_id).destroy
    @favourite.destroy
    redirect_to favourites_path
  end
end
