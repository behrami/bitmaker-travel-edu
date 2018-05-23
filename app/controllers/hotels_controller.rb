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
    @results = []
    @hotelListArray.each do |hotel|
      @hash = {}
      @hash[:place_id] = hotel['place_id']
      @hash[:name] = hotel['name']
      @hash[:address] = hotel['formatted_address']
      @hash[:rating] = hotel['rating']
      @hash[:photo_reference] = hotel['photos'][0]['photo_reference']
      @hash[:latitude] = hotel['geometry']['location']['lat']
      @hash[:longitude] = hotel['geometry']['location']['lng']
      @results << @hash
    end

    respond_to do |format|
      format.html
      format.json {  render json: @results
                  }
    end

  end

  def show
  end
end
