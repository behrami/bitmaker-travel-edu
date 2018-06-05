class CitiesController < ApplicationController
  def index
    @country_id = params[:country_id]
    @cities = Country.find(@country_id).cities
    @darksky_key = ENV['DARKSKY_KEY']

    @weather_list=[]
    @cities.each do |city|
      hotel= Hotel.find_by(city_id: city.id)
      @latitude=hotel.latitude
      @longitude = hotel.longitude
      hash={}

      city_response = HTTParty.get("https://api.darksky.net/forecast/#{@darksky_key}/#{@latitude},#{@latitude}?units=auto")
      city_body = JSON.parse(city_response.body)

      hash[:icon] = city_body['hourly']['data'][0]['icon']
      hash[:summary] = city_body['hourly']['data'][0]['summary']
      hash[:temperature] = city_body['hourly']['data'][0]['temperature']
      @weather_list.push(hash)
    end

  end
end
