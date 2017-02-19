require 'test_helper'

class SelectCertifierControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get select_certifier_index_url
    assert_response :success
  end

end
