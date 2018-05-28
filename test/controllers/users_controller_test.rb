require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do

    get new_user_url
    assert_response :success

  end

  test "should get create" do

    post user_url, {params:{user:{id: 1, first_name:'Behram', last_name: "I", user_name: "behram", email: "behram@gmail.com", password: "password"}}}
    assert_response :found
  end

end
