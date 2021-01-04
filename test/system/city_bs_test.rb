require "application_system_test_case"

class CityBsTest < ApplicationSystemTestCase
  setup do
    @city_b = city_bs(:one)
  end

  test "visiting the index" do
    visit city_bs_url
    assert_selector "h1", text: "City Bs"
  end

  test "creating a City b" do
    visit city_bs_url
    click_on "New City B"

    fill_in "Address", with: @city_b.address
    click_on "Create City b"

    assert_text "City b was successfully created"
    click_on "Back"
  end

  test "updating a City b" do
    visit city_bs_url
    click_on "Edit", match: :first

    fill_in "Address", with: @city_b.address
    click_on "Update City b"

    assert_text "City b was successfully updated"
    click_on "Back"
  end

  test "destroying a City b" do
    visit city_bs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "City b was successfully destroyed"
  end
end
