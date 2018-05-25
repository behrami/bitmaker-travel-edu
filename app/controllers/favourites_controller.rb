class FavouritesController < ApplicationController
  def index
  end

  def new
    @favourite = Favourite.new
  end

  def create
    @favourite = Favourite.new
    @key = ENV['GOOGLE_KEY']

    @hotel_id = params[:id]

    @city_id = params[:city_id]
    @city_name = City.find(@city_id).name

    @country_id = City.find_by(name: @city_name).country_id
    @country_name = Country.find(@country_id).name

    hotelList_response = HTTParty.get("https://maps.googleapis.com/maps/api/place/textsearch/json?query=#{@city_name}+#{@country_name}+hotel&key=#{@key}")
    hotelList_body = JSON.parse(hotelList_response.body)
    @hotelListArray = hotelList_body['results']

    @foundHotelsArray= []
    @hotelListArray.each do |hotel|
      if hotel['place_id'] == @hotel_id
        @foundHotelsArray.push(hotel)
      end
    end
  end

  def destroy
  end
end
