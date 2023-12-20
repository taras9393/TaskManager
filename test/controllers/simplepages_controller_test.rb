require 'test_helper'

class SimplepagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get simplepages_home_url
    assert_response :success
  end

end
