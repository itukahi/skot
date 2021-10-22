require "test_helper"

class SessionsTeacherControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get sessions_teacher_new_url
    assert_response :success
  end
end
