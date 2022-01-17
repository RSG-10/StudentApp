require "application_system_test_case"

class StudmarksTest < ApplicationSystemTestCase
  setup do
    @studmark = studmarks(:one)
  end

  test "visiting the index" do
    visit studmarks_url
    assert_selector "h1", text: "Studmarks"
  end

  test "creating a Studmark" do
    visit studmarks_url
    click_on "New Studmark"

    fill_in "Firstname", with: @studmark.firstname
    fill_in "Lastname", with: @studmark.lastname
    fill_in "Mark1", with: @studmark.mark1
    fill_in "Mark2", with: @studmark.mark2
    fill_in "Mark3", with: @studmark.mark3
    fill_in "Total", with: @studmark.total
    click_on "Create Studmark"

    assert_text "Studmark was successfully created"
    click_on "Back"
  end

  test "updating a Studmark" do
    visit studmarks_url
    click_on "Edit", match: :first

    fill_in "Firstname", with: @studmark.firstname
    fill_in "Lastname", with: @studmark.lastname
    fill_in "Mark1", with: @studmark.mark1
    fill_in "Mark2", with: @studmark.mark2
    fill_in "Mark3", with: @studmark.mark3
    fill_in "Total", with: @studmark.total
    click_on "Update Studmark"

    assert_text "Studmark was successfully updated"
    click_on "Back"
  end

  test "destroying a Studmark" do
    visit studmarks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Studmark was successfully destroyed"
  end
end
