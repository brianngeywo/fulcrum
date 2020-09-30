require 'test_helper'

class FurnitureCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @furniture_category = furniture_categories(:one)
  end

  test "should get index" do
    get furniture_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_furniture_category_url
    assert_response :success
  end

  test "should create furniture_category" do
    assert_difference('FurnitureCategory.count') do
      post furniture_categories_url, params: { furniture_category: { name: @furniture_category.name } }
    end

    assert_redirected_to furniture_category_url(FurnitureCategory.last)
  end

  test "should show furniture_category" do
    get furniture_category_url(@furniture_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_furniture_category_url(@furniture_category)
    assert_response :success
  end

  test "should update furniture_category" do
    patch furniture_category_url(@furniture_category), params: { furniture_category: { name: @furniture_category.name } }
    assert_redirected_to furniture_category_url(@furniture_category)
  end

  test "should destroy furniture_category" do
    assert_difference('FurnitureCategory.count', -1) do
      delete furniture_category_url(@furniture_category)
    end

    assert_redirected_to furniture_categories_url
  end
end
