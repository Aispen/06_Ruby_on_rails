require "application_system_test_case"

class DogefactsTest < ApplicationSystemTestCase
  setup do
    @dogefact = dogefacts(:one)
  end

  test "visiting the index" do
    visit dogefacts_url
    assert_selector "h1", text: "Dogefacts"
  end

  test "creating a Dogefact" do
    visit dogefacts_url
    click_on "New Dogefact"

    fill_in "Context", with: @dogefact.context
    click_on "Create Dogefact"

    assert_text "Dogefact was successfully created"
    click_on "Back"
  end

  test "updating a Dogefact" do
    visit dogefacts_url
    click_on "Edit", match: :first

    fill_in "Context", with: @dogefact.context
    click_on "Update Dogefact"

    assert_text "Dogefact was successfully updated"
    click_on "Back"
  end

  test "destroying a Dogefact" do
    visit dogefacts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dogefact was successfully destroyed"
  end
end
