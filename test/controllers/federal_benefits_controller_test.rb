require 'test_helper'

class FederalBenefitsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get federal_benefits_index_url
    assert_response :success
  end

end
