require "application_system_test_case"

class DiarytitlesTest < ApplicationSystemTestCase
  setup do
    @diarytitle = diarytitles(:one)
  end

  test "visiting the index" do
    visit diarytitles_url
    assert_selector "h1", text: "Diarytitles"
  end

  test "creating a Diarytitle" do
    visit diarytitles_url
    click_on "New Diarytitle"

    fill_in "Title", with: @diarytitle.title
    click_on "Create Diarytitle"

    assert_text "Diarytitle was successfully created"
    click_on "Back"
  end

  test "updating a Diarytitle" do
    visit diarytitles_url
    click_on "Edit", match: :first

    fill_in "Title", with: @diarytitle.title
    click_on "Update Diarytitle"

    assert_text "Diarytitle was successfully updated"
    click_on "Back"
  end

  test "destroying a Diarytitle" do
    visit diarytitles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Diarytitle was successfully destroyed"
  end
end
