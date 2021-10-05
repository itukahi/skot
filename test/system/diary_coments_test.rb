require "application_system_test_case"

class DiaryComentsTest < ApplicationSystemTestCase
  setup do
    @diary_coment = diary_coments(:one)
  end

  test "visiting the index" do
    visit diary_coments_url
    assert_selector "h1", text: "Diary Coments"
  end

  test "creating a Diary coment" do
    visit diary_coments_url
    click_on "New Diary Coment"

    fill_in "Coments", with: @diary_coment.coments
    fill_in "Diary", with: @diary_coment.diary_id
    fill_in "Time", with: @diary_coment.time
    fill_in "User", with: @diary_coment.user_id
    click_on "Create Diary coment"

    assert_text "Diary coment was successfully created"
    click_on "Back"
  end

  test "updating a Diary coment" do
    visit diary_coments_url
    click_on "Edit", match: :first

    fill_in "Coments", with: @diary_coment.coments
    fill_in "Diary", with: @diary_coment.diary_id
    fill_in "Time", with: @diary_coment.time
    fill_in "User", with: @diary_coment.user_id
    click_on "Update Diary coment"

    assert_text "Diary coment was successfully updated"
    click_on "Back"
  end

  test "destroying a Diary coment" do
    visit diary_coments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Diary coment was successfully destroyed"
  end
end
