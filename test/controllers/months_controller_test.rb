require 'test_helper'

class MonthsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get months_index_url
    assert_response :success
  end

end
