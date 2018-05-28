class HotelsController < ApplicationController
  def index

    @city_id = params[:city_id]

    @hotels= Hotel.where(city_id: @city_id)

    @results = []
    @hotels.each do |hotel|
      @hash = {}
      @hash[:place_id] = hotel['place_id']
      @hash[:name] = hotel['name']
      @hash[:address] = hotel['formatted_address']
      @hash[:rating] = hotel['rating']
      @hash[:photo_reference] = hotel['photo_reference']
      @hash[:latitude] = hotel['latitude']
      @hash[:longitude] = hotel['longitude']
      @results << @hash
    end

    respond_to do |format|
      format.html
      format.json {render json: @results}
    end

    @key = ENV['GOOGLE_KEY']

  end

  def show

    @city_id = params[:city_id]
    @hotel_id = params[:id]

    @hotel= Hotel.find_by(id: @hotel_id)
    @place_id = @hotel.place_id
    @latitude = @hotel.latitude
    @longitude = @hotel.longitude

    @key = ENV['GOOGLE_KEY']
    book_response = HTTParty.get("https://maps.googleapis.com/maps/api/place/details/json?placeid=#{@hotel.place_id}&key=#{@key}")

    book_body = JSON.parse(book_response.body)

    @needed_info = book_body['result']
    @book_link = @needed_info['url']
    @phone_number = @needed_info['international_phone_number']
    @website = @needed_info['website']
    @photosArray = @needed_info['photos']
    @reviewsArray = @needed_info['reviews']

  end
end
