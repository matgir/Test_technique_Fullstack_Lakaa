require "test_helper"

class IndicatorNamesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @indicator_name = indicator_names(:one)
  end

  test "should get index" do
    get indicator_names_url, as: :json
    assert_response :success
  end

  test "should create indicator_name" do
    assert_difference("IndicatorName.count") do
      post indicator_names_url, params: { indicator_name: { name: @indicator_name.name } }, as: :json
    end

    assert_response :created
  end

  test "should show indicator_name" do
    get indicator_name_url(@indicator_name), as: :json
    assert_response :success
  end

  test "should update indicator_name" do
    patch indicator_name_url(@indicator_name), params: { indicator_name: { name: @indicator_name.name } }, as: :json
    assert_response :success
  end

  test "should destroy indicator_name" do
    assert_difference("IndicatorName.count", -1) do
      delete indicator_name_url(@indicator_name), as: :json
    end

    assert_response :no_content
  end
end
