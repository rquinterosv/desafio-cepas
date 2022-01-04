require 'test_helper'

class CategorywinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @categorywine = categorywines(:one)
  end

  test "should get index" do
    get categorywines_url
    assert_response :success
  end

  test "should get new" do
    get new_categorywine_url
    assert_response :success
  end

  test "should create categorywine" do
    assert_difference('Categorywine.count') do
      post categorywines_url, params: { categorywine: { category_id: @categorywine.category_id, wine_id: @categorywine.wine_id } }
    end

    assert_redirected_to categorywine_url(Categorywine.last)
  end

  test "should show categorywine" do
    get categorywine_url(@categorywine)
    assert_response :success
  end

  test "should get edit" do
    get edit_categorywine_url(@categorywine)
    assert_response :success
  end

  test "should update categorywine" do
    patch categorywine_url(@categorywine), params: { categorywine: { category_id: @categorywine.category_id, wine_id: @categorywine.wine_id } }
    assert_redirected_to categorywine_url(@categorywine)
  end

  test "should destroy categorywine" do
    assert_difference('Categorywine.count', -1) do
      delete categorywine_url(@categorywine)
    end

    assert_redirected_to categorywines_url
  end
end
