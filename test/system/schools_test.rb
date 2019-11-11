require "application_system_test_case"

class SchoolsTest < ApplicationSystemTestCase
  setup do
    @school = schools(:one)
  end

  test "visiting the index" do
    visit schools_url
    assert_selector "h1", text: "Schools"
  end

  test "creating a School" do
    visit schools_url
    click_on "New School"

    fill_in "Address", with: @school.address
    fill_in "Admin note", with: @school.admin_note
    fill_in "Contact", with: @school.contact
    fill_in "Description", with: @school.description
    fill_in "Name", with: @school.name
    click_on "Create School"

    assert_text "School was successfully created"
    click_on "Back"
  end

  test "updating a School" do
    visit schools_url
    click_on "Edit", match: :first

    fill_in "Address", with: @school.address
    fill_in "Admin note", with: @school.admin_note
    fill_in "Contact", with: @school.contact
    fill_in "Description", with: @school.description
    fill_in "Name", with: @school.name
    click_on "Update School"

    assert_text "School was successfully updated"
    click_on "Back"
  end

  test "destroying a School" do
    visit schools_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "School was successfully destroyed"
  end
end
