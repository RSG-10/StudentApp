require "application_system_test_case"

class StudprofilesTest < ApplicationSystemTestCase
  setup do
    @studprofile = studprofiles(:one)
  end

  test "visiting the index" do
    visit studprofiles_url
    assert_selector "h1", text: "Studprofiles"
  end

  test "creating a Studprofile" do
    visit studprofiles_url
    click_on "New Studprofile"

    fill_in "Address", with: @studprofile.address
    fill_in "Age", with: @studprofile.age
    fill_in "Email", with: @studprofile.email
    fill_in "Image", with: @studprofile.image
    fill_in "Mobilenumber", with: @studprofile.mobilenumber
    fill_in "Studmark", with: @studprofile.studmark_id
    click_on "Create Studprofile"

    assert_text "Studprofile was successfully created"
    click_on "Back"
  end

  test "updating a Studprofile" do
    visit studprofiles_url
    click_on "Edit", match: :first

    fill_in "Address", with: @studprofile.address
    fill_in "Age", with: @studprofile.age
    fill_in "Email", with: @studprofile.email
    fill_in "Image", with: @studprofile.image
    fill_in "Mobilenumber", with: @studprofile.mobilenumber
    fill_in "Studmark", with: @studprofile.studmark_id
    click_on "Update Studprofile"

    assert_text "Studprofile was successfully updated"
    click_on "Back"
  end

  test "destroying a Studprofile" do
    visit studprofiles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Studprofile was successfully destroyed"
  end
end
