require 'test_helper'

class ReportsControllerTest < ActionDispatch::IntegrationTest
  test "should get reports" do
    get reports_reports_url
    assert_response :success
  end

end
