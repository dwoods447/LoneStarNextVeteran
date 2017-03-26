require 'test_helper'

class AdminAccessControllerTest < ActionDispatch::IntegrationTest
  test "should get login" do
    get admin_access_login_url
    assert_response :success
  end

end
