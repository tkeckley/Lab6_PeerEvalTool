require 'test_helper'

class CoursesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @course = courses(:one)
  end
=begin
  test "should get new" do
    get new_course_url
    assert_response :success
  end

  test "should get show" do
    get course_url
    assert_response :success
  end

  test "should get edit" do
    get edit_course_url
    assert_response :success
  end

  test "should get index" do
    get courses_url
    assert_response :success
  end
=end
end
