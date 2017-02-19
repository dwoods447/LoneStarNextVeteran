require 'test_helper'

class ConfirmStudentControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get confirm_student_index_url
    assert_response :success
  end

end
