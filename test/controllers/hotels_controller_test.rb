require 'test_helper'

class HotelsControllerTest < ActionDispatch::IntegrationTest

  def setup
      @country = create(:country)
      @city = create(:city)
  end

  test "should get index" do

    get city_hotels_url(@city.id)
    assert_response :success
  end

  test "should get show" do

    hotel = create(:hotel)

    get city_hotel_url(@city.id,hotel.id)
    assert_response :success
  end

end
