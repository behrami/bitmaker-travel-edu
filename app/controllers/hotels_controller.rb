class HotelsController < ApplicationController
  def index

    @key = ENV['GOOGLE_KEY']
    @city_id = params[:city_id]
    @city_name = City.find(@city_id).name

    @country_id = City.find_by(name: @city_name).country_id
    @country_name = Country.find(@country_id).name

    hotelList_response = HTTParty.get("https://maps.googleapis.com/maps/api/place/textsearch/json?query=#{@city_name}+#{@country_name}+hotel&key=#{@key}")
    hotelList_body = JSON.parse(hotelList_response.body)

    @hotelListArray = hotelList_body['results']

    @hotelListArray.each do |hotel|
      @place_id = hotel['place_id']
      @name = hotel['name']
      @address = hotel['formatted_address']
      @rating = hotel['rating']
      @photo_reference = hotel['photos'][0]['photo_reference']
      @latitude = hotel['geometry']['location']['lat']
      @longitude = hotel['geometry']['location']['lng']
    end

    respond_to do |format|
      format.html
      format.json {  render json: {
                                    "place_id": @place_id,
                                    "name": @name,
                                    "address": @address,
                                    "longitude": @longitude,
                                    "latitude": @latitude,
                                    "rating": @rating,
                                    "photo_reference": @photo_reference
                                  }
                  }
    end

  end

  def show
  end
end
