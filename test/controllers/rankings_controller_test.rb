require 'test_helper'

class RankingsControllerTest < ActionDispatch::IntegrationTest
  test "should get 900" do
    get rankings_900_url
    assert_response :success
  end

end
