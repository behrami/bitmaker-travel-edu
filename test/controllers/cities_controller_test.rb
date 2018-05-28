require 'test_helper'

class CitiesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    country = create(:country)

    get country_cities_url(country.id)
    assert_response :success
  end

end
