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

  end

  def show
    # @key = ENV['GOOGLE_KEY']
    #
    # @hotel_id = params[:id]
    #
    # @city_id = params[:city_id]
    # @city_name = City.find(@city_id).name
    #
    # @country_id = City.find_by(name: @city_name).country_id
    # @country_name = Country.find(@country_id).name
    #
    # hotelList_response = HTTParty.get("https://maps.googleapis.com/maps/api/place/textsearch/json?query=#{@city_name}+#{@country_name}+hotel&key=#{@key}")
    # hotelList_body = JSON.parse(hotelList_response.body)
    # @hotelListArray = hotelList_body['results']
    #
    # @foundHotelsArray= []
    # @hotelListArray.each do |hotel|
    #   if hotel['place_id'] == @hotel_id
    #     @foundHotelsArray.push(hotel)
    #   end
    # end
    #
    #
    # @new_hotel = Hotel.new(city_id: @city_id,
    #                     name: @foundHotelsArray[0]['name'],
    #                     formatted_address: @foundHotelsArray[0]['formatted_address'],
    #                     rating: @foundHotelsArray[0]['rating'],
    #                     latitude: @foundHotelsArray[0]['geometry']['location']['lat'],
    #                     longitude: @foundHotelsArray[0]['geometry']['location']['lng'],
    #                     photo_reference: @foundHotelsArray[0]['photos'][0]['photo_reference'],
    #                     place_id: @foundHotelsArray[0]['place_id'])
    #
    # if !(Hotel.find_by(place_id: @new_hotel.place_id))
    #   @new_hotel.save
    # end
    #
    # book_response = HTTParty.get("https://maps.googleapis.com/maps/api/place/details/json?placeid=#{@foundHotelsArray[0]['place_id']}&key=#{@key}")
    # book_body = JSON.parse(book_response.body)
    # @link = book_body['result']['url']

  end
end
