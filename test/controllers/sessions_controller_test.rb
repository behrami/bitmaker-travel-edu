require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do

    get new_session_url
    assert_response :success

  end

  test "should get create" do

    user = create(:user)

    post session_url, {params:{session:{user_name:'behram', password:'password'}}}
    assert_response :found

  end

  test "should get destroy" do
skip
    get sessions_destroy_url
    assert_response :success

  end

end
