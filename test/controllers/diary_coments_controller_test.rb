require "test_helper"

class DiaryComentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @diary_coment = diary_coments(:one)
  end

  test "should get index" do
    get diary_coments_url
    assert_response :success
  end

  test "should get new" do
    get new_diary_coment_url
    assert_response :success
  end

  test "should create diary_coment" do
    assert_difference('DiaryComent.count') do
      post diary_coments_url, params: { diary_coment: { coments: @diary_coment.coments, diary_id: @diary_coment.diary_id, time: @diary_coment.time, user_id: @diary_coment.user_id } }
    end

    assert_redirected_to diary_coment_url(DiaryComent.last)
  end

  test "should show diary_coment" do
    get diary_coment_url(@diary_coment)
    assert_response :success
  end

  test "should get edit" do
    get edit_diary_coment_url(@diary_coment)
    assert_response :success
  end

  test "should update diary_coment" do
    patch diary_coment_url(@diary_coment), params: { diary_coment: { coments: @diary_coment.coments, diary_id: @diary_coment.diary_id, time: @diary_coment.time, user_id: @diary_coment.user_id } }
    assert_redirected_to diary_coment_url(@diary_coment)
  end

  test "should destroy diary_coment" do
    assert_difference('DiaryComent.count', -1) do
      delete diary_coment_url(@diary_coment)
    end

    assert_redirected_to diary_coments_url
  end
end
