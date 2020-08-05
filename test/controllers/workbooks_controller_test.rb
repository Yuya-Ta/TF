require 'test_helper'

class WorkbooksControllerTest < ActionDispatch::IntegrationTest
  test "should get template" do
    get workbooks_template_url
    assert_response :success
  end

end
