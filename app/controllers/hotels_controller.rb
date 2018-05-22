class HotelsController < ApplicationController
  def index
    key = ENV['GOOGLE_KEY']
    @city_id = params[:city_id]
    @city_name = City.find(@city_id).name

    

    hotelList_response = HTTParty.get("https://maps.googleapis.com/maps/api/place/textsearch/json?query=#{@city_name}+hotel&key=#{key}")
    hotelList_body = JSON.parse(hotelList_response.body)

    # @place_id = hotelList_body['results']['id']
    @name = hotelList_body['results'][0]['name']
    @address = hotelList_body['results'][0]['formatted_address']

    respond_to do |format|
      format.html
      format.json {  render json: {
                                    # "placeID": pokemon_id,
                                    "name": @name,
                                    "address": @address,
                                    # "longitude": gify_url,
                                    # "latitude": gify_url,
                                    # "rating": ,
                                    # "photo_reference":
                                  }
                  }
    end

  end

  def show
  end
end
