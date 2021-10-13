require "test_helper"

class DiarytitlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @diarytitle = diarytitles(:one)
  end

  test "should get index" do
    get diarytitles_url
    assert_response :success
  end

  test "should get new" do
    get new_diarytitle_url
    assert_response :success
  end

  test "should create diarytitle" do
    assert_difference('Diarytitle.count') do
      post diarytitles_url, params: { diarytitle: { title: @diarytitle.title } }
    end

    assert_redirected_to diarytitle_url(Diarytitle.last)
  end

  test "should show diarytitle" do
    get diarytitle_url(@diarytitle)
    assert_response :success
  end

  test "should get edit" do
    get edit_diarytitle_url(@diarytitle)
    assert_response :success
  end

  test "should update diarytitle" do
    patch diarytitle_url(@diarytitle), params: { diarytitle: { title: @diarytitle.title } }
    assert_redirected_to diarytitle_url(@diarytitle)
  end

  test "should destroy diarytitle" do
    assert_difference('Diarytitle.count', -1) do
      delete diarytitle_url(@diarytitle)
    end

    assert_redirected_to diarytitles_url
  end
end
