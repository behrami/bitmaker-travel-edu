desc "api call to get hotels"


task get_google_data: :environment do
  @key = ENV['GOOGLE_KEY']
  @city_name = "Rome"

  @country_name = "Italy"

  hotelList_response = HTTParty.get("https://maps.googleapis.com/maps/api/place/textsearch/json?query=#{@city_name}+#{@country_name}+hotel&key=#{@key}")
  hotelList_body = JSON.parse(hotelList_response.body)
  puts hotelList_body
end
