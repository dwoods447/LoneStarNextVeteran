require 'test_helper'

class FrequentlyAskedQuestionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get frequently_asked_questions_index_url
    assert_response :success
  end

  test "should get new" do
    get frequently_asked_questions_new_url
    assert_response :success
  end

  test "should get show" do
    get frequently_asked_questions_show_url
    assert_response :success
  end

end
