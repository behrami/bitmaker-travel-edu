desc "api call to get hotels"

task get_google_data: :environment do
  @key = ENV['GOOGLE_KEY']

  @countries = Country.all
  @cities = City.all

  @countries.first(1).each do |country| #limiting to test one country only(canada)
    @cities.each do |city|

      if country.id == city.country_id
        @country_name = country.name
        @city_name = city.name
        puts "#{@country_name} #{@city_name}"

        hotelList_response = HTTParty.get("https://maps.googleapis.com/maps/api/place/textsearch/json?query=#{@city_name}+#{@country_name}+hotel&key=#{@key}")

        hotelList_body = JSON.parse(hotelList_response.body)
        @hotelListArray = hotelList_body['results']

        @hotelListArray.each do |hotel|
          @new_hotel = Hotel.new( city_id: city.id,
                                  name: hotel['name'],
                                  formatted_address: hotel['formatted_address'],
                                  rating: hotel['rating'],
                                  latitude: hotel['geometry']['location']['lat'],
                                  longitude: hotel['geometry']['location']['lng'],
                                  photo_reference: hotel['photos'][0]['photo_reference'],
                                  place_id: hotel['place_id'])

          if !(Hotel.find_by(place_id: @new_hotel.place_id))
            @new_hotel.save
          end

        end

      end

    end
  end


end
