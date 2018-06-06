class CitiesController < ApplicationController
  def index
    @country_id = params[:country_id]
    @cities = Country.find(@country_id).cities
    @darksky_key = ENV['DARKSKY_KEY']

    @weather_list=[]
    @cities.each do |city|
      hotel= Hotel.find_by(city_id: city.id)
      @latitude= hotel.latitude
      @longitude = hotel.longitude
      hash={}

      city_response = HTTParty.get("https://api.darksky.net/forecast/#{@darksky_key}/#{@latitude},#{@longitude}?units=auto")
      city_body = JSON.parse(city_response.body)

      hash[:icon] = city_body['currently']['icon']
      hash[:summary] = city_body['currently']['summary']
      hash[:temperature] = city_body['currently']['temperature']
      @weather_list << hash
    end

  end
end
