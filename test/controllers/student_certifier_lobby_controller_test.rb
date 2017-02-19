require 'test_helper'

class StudentCertifierLobbyControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get student_certifier_lobby_index_url
    assert_response :success
  end

end
