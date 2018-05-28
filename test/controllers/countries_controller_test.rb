require 'test_helper'

class CountriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do

    month = create(:month)

    get month_countries_url(month.id)
    assert_response :success
  end

end
