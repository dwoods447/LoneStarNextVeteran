require 'test_helper'

class StudentKioskControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get student_kiosk_index_url
    assert_response :success
  end

end
