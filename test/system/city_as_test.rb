require "application_system_test_case"

class CityAsTest < ApplicationSystemTestCase
  setup do
    @city_a = city_as(:one)
  end

  test "visiting the index" do
    visit city_as_url
    assert_selector "h1", text: "City As"
  end

  test "creating a City a" do
    visit city_as_url
    click_on "New City A"

    fill_in "Name", with: @city_a.name
    click_on "Create City a"

    assert_text "City a was successfully created"
    click_on "Back"
  end

  test "updating a City a" do
    visit city_as_url
    click_on "Edit", match: :first

    fill_in "Name", with: @city_a.name
    click_on "Update City a"

    assert_text "City a was successfully updated"
    click_on "Back"
  end

  test "destroying a City a" do
    visit city_as_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "City a was successfully destroyed"
  end
end
