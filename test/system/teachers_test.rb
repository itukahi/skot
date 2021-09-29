require "application_system_test_case"

class TeachersTest < ApplicationSystemTestCase
  setup do
    @teacher = teachers(:one)
  end

  test "visiting the index" do
    visit teachers_url
    assert_selector "h1", text: "Teachers"
  end

  test "creating a Teacher" do
    visit teachers_url
    click_on "New Teacher"

    fill_in "Account", with: @teacher.account
    fill_in "Grade", with: @teacher.grade
    fill_in "Hurigana", with: @teacher.hurigana
    fill_in "Klass", with: @teacher.klass
    fill_in "Name", with: @teacher.name
    fill_in "Password", with: @teacher.password
    click_on "Create Teacher"

    assert_text "Teacher was successfully created"
    click_on "Back"
  end

  test "updating a Teacher" do
    visit teachers_url
    click_on "Edit", match: :first

    fill_in "Account", with: @teacher.account
    fill_in "Grade", with: @teacher.grade
    fill_in "Hurigana", with: @teacher.hurigana
    fill_in "Klass", with: @teacher.klass
    fill_in "Name", with: @teacher.name
    fill_in "Password", with: @teacher.password
    click_on "Update Teacher"

    assert_text "Teacher was successfully updated"
    click_on "Back"
  end

  test "destroying a Teacher" do
    visit teachers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Teacher was successfully destroyed"
  end
end
