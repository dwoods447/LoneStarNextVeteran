require 'test_helper'

class StateBenefitsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get state_benefits_index_url
    assert_response :success
  end

end
