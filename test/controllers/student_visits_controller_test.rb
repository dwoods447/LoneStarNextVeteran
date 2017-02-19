require 'test_helper'

class StudentVisitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @student_visit = student_visits(:one)
  end

  test "should get index" do
    get student_visits_url
    assert_response :success
  end

  test "should get new" do
    get new_student_visit_url
    assert_response :success
  end

  test "should create student_visit" do
    assert_difference('StudentVisit.count') do
      post student_visits_url, params: { student_visit: { certifier_id: @student_visit.certifier_id, isSignedin: @student_visit.isSignedin, service_requested: @student_visit.service_requested, student_id: @student_visit.student_id } }
    end

    assert_redirected_to student_visit_url(StudentVisit.last)
  end

  test "should show student_visit" do
    get student_visit_url(@student_visit)
    assert_response :success
  end

  test "should get edit" do
    get edit_student_visit_url(@student_visit)
    assert_response :success
  end

  test "should update student_visit" do
    patch student_visit_url(@student_visit), params: { student_visit: { certifier_id: @student_visit.certifier_id, isSignedin: @student_visit.isSignedin, service_requested: @student_visit.service_requested, student_id: @student_visit.student_id } }
    assert_redirected_to student_visit_url(@student_visit)
  end

  test "should destroy student_visit" do
    assert_difference('StudentVisit.count', -1) do
      delete student_visit_url(@student_visit)
    end

    assert_redirected_to student_visits_url
  end
end
