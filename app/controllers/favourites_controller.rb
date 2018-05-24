class FavouritesController < ApplicationController
  def index
  end

  def new
    @favourite = Favourite.new 
  end

  def create
    @favourite = Favourite.new
  end

  def destroy
  end
end
