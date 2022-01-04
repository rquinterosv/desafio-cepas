require "application_system_test_case"

class CategorywinesTest < ApplicationSystemTestCase
  setup do
    @categorywine = categorywines(:one)
  end

  test "visiting the index" do
    visit categorywines_url
    assert_selector "h1", text: "Categorywines"
  end

  test "creating a Categorywine" do
    visit categorywines_url
    click_on "New Categorywine"

    fill_in "Category", with: @categorywine.category_id
    fill_in "Wine", with: @categorywine.wine_id
    click_on "Create Categorywine"

    assert_text "Categorywine was successfully created"
    click_on "Back"
  end

  test "updating a Categorywine" do
    visit categorywines_url
    click_on "Edit", match: :first

    fill_in "Category", with: @categorywine.category_id
    fill_in "Wine", with: @categorywine.wine_id
    click_on "Update Categorywine"

    assert_text "Categorywine was successfully updated"
    click_on "Back"
  end

  test "destroying a Categorywine" do
    visit categorywines_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Categorywine was successfully destroyed"
  end
end
