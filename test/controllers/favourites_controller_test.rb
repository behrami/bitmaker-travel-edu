require 'test_helper'

class FavouritesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
skip
    current_user = create(:user)
    get favourites_url
    assert_response :success
  end

  test "should get new" do
skip
    country = create(:country)
    city = create(:city)
    hotel = create(:hotel)

    get new_hotel_favourite_url
    assert_response :success
  end

  test "should get create" do
skip
    country = create(:country)
    city = create(:city)
    hotel = create(:hotel)

    post hotel_favourites_url, {params:{hotel_id:1}}
    assert_response :found
  end

  test "should get destroy" do
    skip
    get favourite_url
    assert_response :success

  end

end
