require "application_system_test_case"

class SwappersTest < ApplicationSystemTestCase
  setup do
    @swapper = swappers(:one)
  end

  test "visiting the index" do
    visit swappers_url
    assert_selector "h1", text: "Swappers"
  end

  test "should create swapper" do
    visit swappers_url
    click_on "New swapper"

    fill_in "Experience", with: @swapper.experience
    fill_in "Name", with: @swapper.name
    click_on "Create Swapper"

    assert_text "Swapper was successfully created"
    click_on "Back"
  end

  test "should update Swapper" do
    visit swapper_url(@swapper)
    click_on "Edit this swapper", match: :first

    fill_in "Experience", with: @swapper.experience
    fill_in "Name", with: @swapper.name
    click_on "Update Swapper"

    assert_text "Swapper was successfully updated"
    click_on "Back"
  end

  test "should destroy Swapper" do
    visit swapper_url(@swapper)
    click_on "Destroy this swapper", match: :first

    assert_text "Swapper was successfully destroyed"
  end
end
