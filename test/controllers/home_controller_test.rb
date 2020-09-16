require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get guide" do
    get home_guide_url
    assert_response :success
  end

end
