class HotelsController < ApplicationController
  def index
    key = ENV['GOOGLE_KEY']
    @city_id = params[:city_id]
    @city_name = City.find(@city_id).name

    @country_id = City.find_by(name: @city_name).country_id
    @country_name = Country.find(@country_id).name

    hotelList_response = HTTParty.get("https://maps.googleapis.com/maps/api/place/textsearch/json?query=#{@city_name}+#{@country_name}+hotel&key=#{key}")
    hotelList_body = JSON.parse(hotelList_response.body)

    @place_id = hotelList_body['results'][0]['place_id']
    @name = hotelList_body['results'][0]['name']
    @address = hotelList_body['results'][0]['formatted_address']
    @rating = hotelList_body['results'][0]['rating']
    @photo_reference = hotelList_body['results'][0]['photos'][0]['photo_reference']
    @latitude = hotelList_body['results'][0]['geometry']['location']['lat']
    @longitude = hotelList_body['results'][0]['geometry']['location']['lng']

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
