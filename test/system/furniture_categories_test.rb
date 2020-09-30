require "application_system_test_case"

class FurnitureCategoriesTest < ApplicationSystemTestCase
  setup do
    @furniture_category = furniture_categories(:one)
  end

  test "visiting the index" do
    visit furniture_categories_url
    assert_selector "h1", text: "Furniture Categories"
  end

  test "creating a Furniture category" do
    visit furniture_categories_url
    click_on "New Furniture Category"

    fill_in "Name", with: @furniture_category.name
    click_on "Create Furniture category"

    assert_text "Furniture category was successfully created"
    click_on "Back"
  end

  test "updating a Furniture category" do
    visit furniture_categories_url
    click_on "Edit", match: :first

    fill_in "Name", with: @furniture_category.name
    click_on "Update Furniture category"

    assert_text "Furniture category was successfully updated"
    click_on "Back"
  end

  test "destroying a Furniture category" do
    visit furniture_categories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Furniture category was successfully destroyed"
  end
end
