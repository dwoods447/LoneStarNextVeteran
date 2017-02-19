require 'test_helper'

class CertifiersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @certifier = certifiers(:one)
  end

  test "should get index" do
    get certifiers_url
    assert_response :success
  end

  test "should get new" do
    get new_certifier_url
    assert_response :success
  end

  test "should create certifier" do
    assert_difference('Certifier.count') do
      post certifiers_url, params: { certifier: { benefit_assigned: @certifier.benefit_assigned, certifier_id: @certifier.certifier_id, email: @certifier.email, first_name: @certifier.first_name, last_name: @certifier.last_name } }
    end

    assert_redirected_to certifier_url(Certifier.last)
  end

  test "should show certifier" do
    get certifier_url(@certifier)
    assert_response :success
  end

  test "should get edit" do
    get edit_certifier_url(@certifier)
    assert_response :success
  end

  test "should update certifier" do
    patch certifier_url(@certifier), params: { certifier: { benefit_assigned: @certifier.benefit_assigned, certifier_id: @certifier.certifier_id, email: @certifier.email, first_name: @certifier.first_name, last_name: @certifier.last_name } }
    assert_redirected_to certifier_url(@certifier)
  end

  test "should destroy certifier" do
    assert_difference('Certifier.count', -1) do
      delete certifier_url(@certifier)
    end

    assert_redirected_to certifiers_url
  end
end
